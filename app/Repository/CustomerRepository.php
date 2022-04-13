<?php 

namespace App\Repository;

use App\Models\Customer;
use App\Repository\ICustomerRepository;
use App\Http\Resources\CustomerResource;
use Illuminate\Support\Facades\DB;

class CustomerRepository implements ICustomerRepository
{   
    protected $customer = null;

    public function getAllCustomers( $collection = [], $pagLimit= null )
    {
        $customers = Customer::orderBy('id','DESC');
        if( isset($collection['org_search']) && ($collection['org_search'] != '') ){
            
            $searchData = $collection['org_search'] ?? '';
            $customers->when($searchData, function ($q) use($searchData) { 
                return $q->orWhere('name', 'like', '%'. $searchData . '%');
            });

        }

        if( $pagLimit == 'all') {
            $customerlists  = $customers->where('status', '=', 'active')->get();
        } else {
            $customerlists  = $customers->paginate(config('global.pagination_records'));
        }

        $customersList  = CustomerResource::collection($customerlists);
        echo "<PRE>";
        print_r($customersList);
        // return $customersList; 
        die;

        return response([ 'projects' => CustomerResource::collection($customers), 'message' => 'Retrieved successfully'], 200);
    }

    public function getCustomerById($id)
    {
        return Customer::find($id);
    }

    public function createOrUpdate( $id = null, $collection = [] )
    {   
        $result = false;
        if(is_null($id)) {
            
            try
            {
                DB::beginTransaction();
                $customer                    = new Customer;
                $customer->customer_code     = $collection['customer_code'];
                $customer->name              = $collection['name'];
                $customer->gender            = $collection['gender'];
                $customer->phone_no          = $collection['phone_no'];
                $customer->email             = $collection['email'];
                $customer->address           = $collection['address'];
                $customer->city_id           = $collection['city_id'];
                $customer->state_id          = $collection['state_id'];
                $customer->country_id        = $collection['country_id'];
                $customer->postal_code       = $collection['postal_code'];
                $customer->created_by        = auth()->id();
                $result                      = $customer->save();
                DB::commit();

            } catch (\Exception $e)
            {
                throw $e; //sometime you want to rollback AND throw the exception
                DB::rollBack();
            }
            
            
        }
        /* $customer                  = Customer::find($id);
        $customer->name            = $collection['name'];
        $customer->updated_by      = auth()->id();
        return $customer->save(); */
    }
    
    public function deleteCustomer($id)
    {
        return Customer::find($id)->delete();
    }
}