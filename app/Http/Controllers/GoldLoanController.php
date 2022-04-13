<?php

namespace App\Http\Controllers;

use App\Models\GoldLoans;
use App\Http\Controllers\Controller;
use App\Repository\IGoldLoanRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Session;

class GoldLoanController extends Controller
{
    public function __construct(IGoldLoanRepository $goldloan)
    {
        $this->goldloan = $goldloan;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function showGoldLoans(Request $request)
    {
        $collection = $request->except(['_token','_method']);
        $goldloans = $this->goldloan->getAllGoldLoans($collection);
        return View::make('admin.goldloan.goldloan', compact('goldloans'));
    }
    
    /**
     * Show the form for creating or updating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function createGoldLoan()
    {
        return View::make('admin.goldloan.goldloanform');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\GoldLoan  $goldloan
     * @return \Illuminate\Http\Response
     */

    public function getGoldLoan($id)
    {
        $goldloan = $this->goldloan->getGoldLoanById($id);
        return View::make('admin.goldloan.goldloanform', compact('goldloan'));
    }
    
    /**
     * Add or Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\GoldLoan  $goldloan
     * @return \Illuminate\Http\Response
     */

    public function saveGoldLoan(Request $request, $id = null)
    {   
        $collection = $request->except(['_token','_method']);
        
        if( ! is_null( $id ) ) 
        {
            $this->goldloan->createOrUpdate($id, $collection);
            $message =  __('app.contacts.goldloan.update-success');
        }
        else
        {
            $this->goldloan->createOrUpdate($id = null, $collection);
            $message =  __('app.contacts.goldloan.create-success');
        }

        return redirect()->route('goldloan.list')->with('success',$message);
    }

    public function changeStatus(Request $request, $id = null, $status = null)
    {   
        $collection = $request->except(['_token','_method']);
        $this->goldloan->changeStatus($id, $status);
        $message =  __('app.goldloan.update-success');
        return redirect()->route('goldloan.list')->with('success',$message); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\GoldLoan  $goldloan
     * @return \Illuminate\Http\Response
     */

    public function deleteGoldLoan($id)
    {
        $this->goldloan->deleteGoldLoan($id);
        $message =  __('app.contacts.goldloan.delete-success');
        return redirect()->route('goldloan.list')->with('success',$message);
    }
    
}
