<?php

namespace App\Http\Controllers;

use App\Models\GoldRates;
use App\Http\Controllers\Controller;
use App\Repository\IGoldRatesRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Session;

class GoldRatesController extends Controller
{
    public function __construct(IGoldRatesRepository $goldrate)
    {
        $this->goldrate = $goldrate;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function showGoldRates(Request $request)
    {
        $collection = $request->except(['_token','_method']);
        $goldrates = $this->goldrate->getAllGoldRates($collection);
        return View::make('admin.goldrate.goldrate', compact('goldrates'));
    }
    
    /**
     * Show the form for creating or updating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function createGoldRate()
    {
        return View::make('admin.goldrate.goldrateform');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\GoldRate  $goldrate
     * @return \Illuminate\Http\Response
     */

    public function getGoldRate($id)
    {
        $goldrate = $this->goldrate->getGoldRatesById($id);
        return View::make('admin.goldrate.goldrateform', compact('goldrate'));
    }
    
    /**
     * Add or Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\GoldRates  $goldrate
     * @return \Illuminate\Http\Response
     */

    public function saveGoldRate(Request $request, $id = null)
    {   
        $collection = $request->except(['_token','_method']);
        
        if( ! is_null( $id ) ) 
        {
            $this->goldrate->createOrUpdate($id, $collection);
            $message =  __('app.goldrate.update-success');
        }
        else
        {
            $this->goldrate->createOrUpdate($id = null, $collection);
            $message =  __('app.goldrate.create-success');
        }
        
        return redirect()->route('goldrate.list')->with('success',$message);
    }

    public function changeStatus(Request $request, $id = null, $status = null)
    {   
        $collection = $request->except(['_token','_method']);
        $this->goldrate->changeStatus($id, $status);
        $message =  __('app.goldrate.update-success');
        return redirect()->route('goldrate.list')->with('success',$message); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\GoldRate  $goldrate
     * @return \Illuminate\Http\Response
     */

    public function deleteGoldRate($id)
    {
        $this->goldrate->deleteGoldRate($id);
        $message =  __('app.goldrate.delete-success');
        return redirect()->route('goldrate.list')->with('success',$message);
    }
    
}
