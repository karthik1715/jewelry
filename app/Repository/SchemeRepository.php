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
        echo "<PRE>";
        print_r($schemesList);
        // return $schemesList; 
        die;

        return response([ 'projects' => SchemeResource::collection($schemes), 'message' => 'Retrieved successfully'], 200);
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
                $scheme->name                   = $collection['name'];
                $scheme->description            = $collection['description'];
                $scheme->item_ref_id            = $collection['item_ref_id'];
                $scheme->start_date             = $collection['start_date'];
                $scheme->end_date               = $collection['end_date'];
                $scheme->loan_basis             = $collection['loan_basis'];
                $scheme->subscheme              = $collection['subscheme'];
                $scheme->payment_in_advance     = $collection['payment_in_advance'];
                $scheme->preclosure_time        = $collection['preclosure_time'];
                $scheme->penalty_type           = $collection['penalty_type'];
                $scheme->penalty                = $collection['penalty'];
                $scheme->payment_basis_on       = $collection['payment_basis_on'];
                $scheme->loan_period            = $collection['loan_period'];
                $scheme->gold_approval          = $collection['gold_approval'];
                $scheme->minimum_loan_amount    = $collection['minimum_loan_amount'];
                $scheme->maximum_loan_amount    = $collection['maximum_loan_amount'];
                $scheme->processing_fess        = $collection['processing_fess'];
                $scheme->created_by             = 1;//auth()->id();
                $result                         = $scheme->save();
                $insertedId                     = $scheme->id;

                if ( $result ) {
                    
                    $intRates = new InterestRates;
                    $intRates->scheme_id        = $insertedId;
                    $intRates->from             = 1;
                    $intRates->to               = 30;
                    $intRates->type             = 'days';
                    $intRates->interest_value   = 12;
                    $intRates->save();
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
        /* $scheme                  = Scheme::find($id);
        $scheme->name            = $collection['name'];
        $scheme->updated_by      = 1;//auth()->id();
        return $scheme->save(); */
    }
    
    public function deleteScheme($id)
    {
        return Scheme::find($id)->delete();
    }
}