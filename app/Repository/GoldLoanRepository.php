<?php 

namespace App\Repository;

use App\Models\GoldLoans;
use App\Models\GoldLoanItems;
use App\Models\GoldLoanItemTotal;
use App\Models\GoldLoanStatusHistory;
use App\Repository\IGoldLoanRepository;
use App\Http\Resources\GoldLoanResource;

use Illuminate\Support\Facades\DB;

class GoldLoanRepository implements IGoldLoanRepository
{   
    protected $goldloan = null;

    public function getAllGoldLoans( $collection = [], $pagLimit= null )
    {
        $goldloans = GoldLoans::orderBy('id','DESC');
        if( isset($collection['org_search']) && ($collection['org_search'] != '') ){
            
            $searchData = $collection['org_search'] ?? '';
            $goldloans->when($searchData, function ($q) use($searchData) { 
                return $q->orWhere('name', 'like', '%'. $searchData . '%');
            });

        }

        if( $pagLimit == 'all') {
            $goldloanlists  = $goldloans->where('status', '=', 'active')->get();
        } else {
            $goldloanlists  = $goldloans->paginate(config('global.pagination_records'));
        }

        $goldloansList  = GoldLoanResource::collection($goldloanlists);
        return $goldloansList; 
    }

    public function getGoldLoanById($id)
    {
        return GoldLoans::find($id);
    }

    public function createOrUpdate( $id = null, $collection = [] )
    {   
        echo "<PRE>";
        $glFormValue        =  array();
        $glFormItemValue    =  array();
        if ( $collection['glForm'] ) {
            parse_str($collection['glForm'], $glFormValue);
        }
        $id = $glFormValue['hiddenGlId'];
// die;
        

        $result = false;
        if(is_null($id) || $id != '') {
            
            try
            {
                DB::beginTransaction();

                $goldloan                       = new GoldLoans;
                $goldloan->customer_id          = $glFormValue['customer_id'];
                $goldloan->scheme_ref_id        = $glFormValue['scheme_ref_id'];
                $goldloan->payment_ref_id       = $glFormValue['payment_ref_id'];
                // $goldloan->frequency         = $glFormValue['frequency'];
                $goldloan->loan_date            = $glFormValue['loan_date'];
                $goldloan->loan_amount          = $glFormValue['loan_amount'];
                $goldloan->sanction_amount      = $glFormValue['sanction_amount'];
                $goldloan->loan_status          = 'completed';
                $goldloan->created_by           = auth()->id();
                $goldloan->approved_by          = auth()->id();
                $result                         = $goldloan->save();
                $insertedId                     = $goldloan->id;

                $upglcode                       = GoldLoans::find($insertedId);
                $upglcode->loan_no              = sprintf("%'06s",$insertedId);
                $upglcode->save();

                $gl_total                               = new GoldLoanItemTotal;
                $gl_total->loan_type_id                 = $insertedId;
                $gl_total->total_gross_weight           = $glFormValue['totalGrossValue'];
                $gl_total->total_stone_weight           = $glFormValue['totalStoneValue'];
                $gl_total->total_net_weight             = $glFormValue['totalNetValue'];
                $gl_total->total_percentage_deduction   = $glFormValue['totalDeductValue'];
                $gl_total->total_value_for_item         = $glFormValue['woNetAmountValue'];
                $gl_total->total_value_for_deduction    = $glFormValue['totalDeductAmount'];
                $gl_total->total_value_for_net_weight   = $glFormValue['totalNetAmount'];
                $gl_total_result                        = $gl_total->save();

                $gl_history                             = new GoldLoanStatusHistory;
                $gl_history->loan_type_id               = $insertedId;
                $gl_history->loan_status                = 'completed';
                $gl_history->created_by                 = auth()->id();
                $gl_history_result                      = $gl_history->save();

                if ( $result ) {

                    if ( $collection['glItemsFrom'] ) {
                        parse_str($collection['glItemsFrom'], $glFormItemValue);
                        
                        foreach ($glFormItemValue['add_items'] as $key => $value) {
                            
                            $glItems                        = new GoldLoanItems;
                            $glItems->gold_loan_id          = $insertedId;
                            $glItems->group_id              = $value['group_id'];
                            $glItems->item_id               = $value['item_id'];
                            $glItems->noof_items            = $value['noof_items'];
                            $glItems->gold_type             = $value['gold_type'];
                            $glItems->purity_in_karrot      = $value['purity_in_karat'];
                            $glItems->gross_weight          = $value['gross_weight'];
                            $glItems->stone_weight          = $value['stone_weight']?$value['stone_weight']:'0.00';
                            $glItems->net_weight            = $value['net_weight'];
                            $glItems->current_gold_rate     = $value['current_gold_rate'];
                            $glItems->purity_karat_value    = $value['purity_karat_value'];
                            $glItems->wo_deduct_value       = $value['wo_deduct_value'];
                            $glItems->deduct_value          = $value['deduct_value'];
                            $glItems->deduct_gold_value     = $value['deduct_gold_value'];
                            $glItems->lending_gold_rate     = $value['lending_gold_rate'];
                            $glItems->net_weight_value      = $value['net_weight_value'];
                            $glItems->remarks               = $value['remarks'];
                            $glItems->item_image            = 'profilr.jpeg';
                            $glItems->item_image_path       = 'http://localhost/'; 
                            $glItems->created_by            = auth()->id();
                            $glItems->save();

                            DB::commit();

                        }
                    }
                    
                    
                    /* $glItems->group_id              = 1;
                    $glItems->item_id               = 1;
                    $glItems->noof_items            = 2;
                    $glItems->gold_type             = 1;
                    $glItems->purity_in_karrot      = 22;
                    $glItems->gross_weight          = 12;
                    $glItems->stone_weight          = 2;
                    $glItems->net_weight            = 10;
                    $glItems->current_gold_rate     = 2800;
                    $glItems->lending_gold_rate     = 1500;
                    $glItems->net_weight_value      = 15;
                    $glItems->remarks               = 'test';
                    $glItems->item_image            = 'profilr.jpeg';
                    $glItems->item_image_path       = 'http://localhost/'; 
                    $glItems->created_by            = auth()->id();
                    $glItems->save();

                    DB::commit();*/

                }
                else
                {
                    DB::rollBack();
                    //return somme errors
                }
                
            } catch (\Exception $e)
            {
                throw $e; //sometime you want to rollback AND throw the exception
                DB::rollBack();
            }
            
        }
        else {
            echo "wel";
        }
        die;
        /* $goldloan                  = GoldLoans::find($id);
        $goldloan->name            = $collection['name'];
        $goldloan->updated_by      = auth()->id();
        return $goldloan->save(); */
    }

    public function changeStatus( $id = null, $status = null )
    {   
        $group                  = GoldLoans::find($id);
        if($status == 0) {
            $group->status            = 1;
        } else {
            $group->status            = 0;
        }
        $group->updated_by      = auth()->id();
        return $group->save();
    }
    
    public function deleteGoldLoan($id)
    {
        return GoldLoans::find($id)->delete();
    }
}