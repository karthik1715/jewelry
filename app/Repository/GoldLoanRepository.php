<?php 

namespace App\Repository;

use App\Models\GoldLoans;
use App\Models\GoldLoanItems;
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
        $result = false;
        if(is_null($id)) {
            
            try
            {
                DB::beginTransaction();

                $goldloan                           = new GoldLoans;
                $goldloan->customer_id              = $collection['customer_id'];
                $goldloan->loan_no                  = $collection['loan_no'];
                $goldloan->coapplicant_id           = $collection['coapplicant_id'];
                $goldloan->nominee_name             = $collection['nominee_name'];
                $goldloan->nominee_relation         = $collection['nominee_relation'];
                $goldloan->nominee_dob              = $collection['nominee_dob'];
                $goldloan->nominee_age              = $collection['nominee_age'];
                $goldloan->scheme_ref_id            = $collection['scheme_ref_id'];
                $goldloan->payment_ref_id           = $collection['payment_ref_id'];
                $goldloan->tenure                   = $collection['tenure'];
                $goldloan->interest_rate            = $collection['interest_rate'];
                $goldloan->frequency                = $collection['frequency'];
                $goldloan->loan_date                = $collection['loan_date'];
                $goldloan->loan_amount              = $collection['loan_amount'];
                $goldloan->created_by               = auth()->id();
                $result                             = $goldloan->save();
                $insertedId                         = $goldloan->id;

                if ( $result ) {
                    
                    $glItems                        = new GoldLoanItems;
                    $glItems->gold_loan_id          = $insertedId;
                    $glItems->group_id              = 1;
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

                    DB::commit();

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