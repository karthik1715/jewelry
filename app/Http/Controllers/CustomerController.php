<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Http\Controllers\Controller;
use App\Repository\ICustomerRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Session;

class CustomerController extends Controller
{
    public function __construct(ICustomerRepository $customer)
    {
        $this->customer = $customer;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function showCustomers(Request $request)
    {
        $collection = $request->except(['_token','_method']);
        $customers = $this->customer->getAllCustomers($collection);
        // return View::make('admin.customer.customer', compact('customers'));
    }
    
    /**
     * Show the form for creating or updating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function createCustomer()
    {
        // return View::make('admin.customer.form');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Customer  $customer
     * @return \Illuminate\Http\Response
     */

    public function getCustomer($id)
    {
        // $customer = $this->customer->getCustomerById($id);
        // return View::make('admin.customer.form', compact('customer'));
    }
    
    /**
     * Add or Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Customer  $customer
     * @return \Illuminate\Http\Response
     */

    public function saveCustomer(Request $request, $id = null)
    {   
        $collection = $request->except(['_token','_method']);
        
        if( ! is_null( $id ) ) 
        {
            $this->customer->createOrUpdate($id, $collection);
            $message =  __('app.contacts.customer.update-success');
        }
        else
        {
            $this->customer->createOrUpdate($id = null, $collection);
            // $message =  __('app.contacts.customer.create-success');
        }
        /* 
        return redirect()->route('customer.list')->with('success',$message); */
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Customer  $customer
     * @return \Illuminate\Http\Response
     */

    public function deleteCustomer($id)
    {
        $this->customer->deleteCustomer($id);
        /* $message =  __('app.contacts.customer.delete-success');
        return redirect()->route('customer.list')->with('success',$message); */
    }
    
}
