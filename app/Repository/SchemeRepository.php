<?php 

namespace App\Repository;

use App\Models\Scheme;
use App\Models\InterestRates;
use App\Repository\ISchemeRepository;
use App\Http\Resources\SchemeResource;
use Illuminate\Support\Facades\DB;

class SchemeRepository implements ISchemeRepository
{   
    protected $scheme = null;

    public function getAllSchemes( $collection = [], $pagLimit= null )
    {
        $schemes = Scheme::orderBy('id','DESC');
        if( isset($collection['org_search']) && ($collection['org_search'] != '') ){
            
            $searchData = $collection['org_search'] ?? '';
            $schemes->when($searchData, function ($q) use($searchData) { 
                return $q->orWhere('name', 'like', '%'. $searchData . '%');
            });

        }

        if( $pagLimit == 'all') {
            $schemelists  = $schemes->where('status', '=', 'active')->get();
        } else {
            $schemelists  = $schemes->paginate(config('global.pagination_records'));
        }

        $schemesList  = SchemeResource::collection($schemelists);
        return $schemesList; 
    }

    public function getSchemeById($id)
    {
        return Scheme::find($id);
    }

    public function createOrUpdate( $id = null, $collection = [] )
    {   
        $result = false;
        if(is_null($id)) {
            try
            {
                DB::beginTransaction();

                $scheme                         = new Scheme;
                $scheme->scheme_type_id         = $collection['scheme_type_id'];
                $scheme->group_ref_id           = $collection['group_ref_id'];
                $scheme->name                   = $collection['name'];
                $scheme->start_date             = $collection['start_date'];
                $scheme->end_date               = $collection['end_date'];
                $scheme->loan_basis             = $collection['loan_basis'];
                $scheme->calc_method            = $collection['calc_method'];
                $scheme->pay_frequency          = $collection['pay_frequency'];
                $scheme->compound_interest      = $collection['compound_interest'];
                $scheme->payment_in_advance     = $collection['payment_in_advance'];
                $scheme->loyal_point            = $collection['loyal_point'];
                $scheme->auto_round             = $collection['auto_round'];
                $scheme->round_to               = $collection['round_to'];
                $scheme->round_mode             = $collection['round_mode'];
                $scheme->preclosure_time        = $collection['preclosure_time'];
                $scheme->penalty_type           = $collection['penalty_type'];
                $scheme->penalty                = $collection['penalty'];
                $scheme->payment_basis_on       = $collection['payment_basis_on'];
                $scheme->loan_period            = $collection['loan_period'];
                $scheme->minimum_loan_amount    = $collection['minimum_loan_amount'];
                $scheme->maximum_loan_amount    = $collection['maximum_loan_amount'];
                $scheme->process_feestype       = $collection['process_feestype'];
                $scheme->processing_fees        = $collection['processing_fees'];
                $scheme->lending_rate           = $collection['lending_rate'];
                $scheme->loan_approval          = $collection['loan_approval'];
                $scheme->description            = $collection['description'];
                $scheme->subscheme              = 0; //$collection['subscheme'];
                $scheme->created_by             = auth()->id();
                $result                         = $scheme->save();
                $insertedId                     = $scheme->id;

                if ( $result ) {
                    
                    $count = count($collection['interest_rate']);
                    if( $count > 0 ) {
                        $intesetrate = $collection['interest_rate'];
                        for ( $i = 0; $i < $count; $i++) {
                            $intRates = new InterestRates;
                            $intRates->scheme_id        = $insertedId;
                            $intRates->from             = $intesetrate[$i]['from'];
                            $intRates->to               = $intesetrate[$i]['to'];
                            $intRates->type             = $intesetrate[$i]['type'];
                            $intRates->interest_value   = $intesetrate[$i]['interest_value'];
                            $intRates->save();
                            DB::commit();
                        }
                        return $result;
                    }
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
        $scheme                  = Scheme::find($id);
        try
        {
            DB::beginTransaction();

            $scheme->scheme_type_id         = $collection['scheme_type_id'];
            $scheme->name                   = $collection['name'];
            $scheme->group_ref_id           = $collection['group_ref_id'];
            $scheme->start_date             = $collection['start_date'];
            $scheme->end_date               = $collection['end_date'];
            $scheme->loan_basis             = $collection['loan_basis'];
            $scheme->calc_method            = $collection['calc_method'];
            $scheme->pay_frequency          = $collection['pay_frequency'];
            $scheme->compound_interest      = $collection['compound_interest'];
            $scheme->payment_in_advance     = $collection['payment_in_advance'];
            $scheme->loyal_point            = $collection['loyal_point'];
            $scheme->auto_round             = $collection['auto_round'];
            $scheme->round_to               = $collection['round_to'];
            $scheme->round_mode             = $collection['round_mode'];
            $scheme->preclosure_time        = $collection['preclosure_time'];
            $scheme->penalty_type           = $collection['penalty_type'];
            $scheme->penalty                = $collection['penalty'];
            $scheme->payment_basis_on       = $collection['payment_basis_on'];
            $scheme->loan_period            = $collection['loan_period'];
            $scheme->minimum_loan_amount    = $collection['minimum_loan_amount'];
            $scheme->maximum_loan_amount    = $collection['maximum_loan_amount'];
            $scheme->process_feestype       = $collection['process_feestype'];
            $scheme->processing_fees        = $collection['processing_fees'];
            $scheme->lending_rate           = $collection['lending_rate'];
            $scheme->loan_approval          = $collection['loan_approval'];
            $scheme->description            = $collection['description'];
            $scheme->subscheme              = 0; //$collection['subscheme'];
            $scheme->updated_by             = auth()->id();
            $result                         = $scheme->save();
            $insertedId                     = $id;

            if ( $result ) {
                
                $count = count($collection['interest_rate']);
                if( $count > 0 ) {
                    $intesetrate = $collection['interest_rate'];
                   
                    $delete = InterestRates::where('scheme_id',$id)->delete();
                    for ( $i = 0; $i < $count; $i++) {
                        $intRates = new InterestRates;
                        $intRates->scheme_id        = $insertedId;
                        $intRates->from             = $intesetrate[$i]['from'];
                        $intRates->to               = $intesetrate[$i]['to'];
                        $intRates->type             = $intesetrate[$i]['type'];
                        $intRates->interest_value   = $intesetrate[$i]['interest_value'];
                        $intRates->save();
                        DB::commit();
                    }
                    return $result;
                }
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

    public function changeStatus( $id = null, $status = null )
    {   
        $group                  = Scheme::find($id);
        if($status == 0) {
            $group->status            = 1;
        } else {
            $group->status            = 0;
        }
        $group->updated_by      = auth()->id();
        return $group->save();
    }
    
    public function deleteScheme($id)
    {
        return Scheme::find($id)->delete();
    }
}