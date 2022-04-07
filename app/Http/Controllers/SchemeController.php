<?php

namespace App\Http\Controllers;

use App\Models\Scheme;
use App\Http\Controllers\Controller;
use App\Repository\ISchemeRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Session;

class SchemeController extends Controller
{
    public function __construct(ISchemeRepository $scheme)
    {
        $this->scheme = $scheme;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function showSchemes(Request $request)
    {
        $collection = $request->except(['_token','_method']);
        $schemes = $this->scheme->getAllSchemes($collection);
        return View::make('admin.scheme.scheme', compact('schemes'));
    }
    
    /**
     * Show the form for creating or updating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function createScheme()
    {
        return View::make('admin.scheme.schemeform');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Scheme  $scheme
     * @return \Illuminate\Http\Response
     */

    public function getScheme($id)
    {
        $scheme = $this->scheme->getSchemeById($id);
        return View::make('admin.scheme.schemeform', compact('scheme'));
    }
    
    /**
     * Add or Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Scheme  $scheme
     * @return \Illuminate\Http\Response
     */

    public function saveScheme(Request $request, $id = null)
    {   
        $collection = $request->except(['_token','_method']);
        
        
        if( ! is_null( $id ) ) 
        {
            $this->scheme->createOrUpdate($id, $collection);
            $message =  __('app.scheme.update-success');
        }
        else
        {
            $this->scheme->createOrUpdate($id = null, $collection);
            $message =  __('app.scheme.create-success');
        }
        
        return redirect()->route('scheme.list')->with('success',$message);
    }

    public function changeStatus(Request $request, $id = null, $status = null)
    {   
        $collection = $request->except(['_token','_method']);
        $this->scheme->changeStatus($id, $status);
        $message =  __('app.scheme.update-success');
        return redirect()->route('scheme.list')->with('success',$message); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Scheme  $scheme
     * @return \Illuminate\Http\Response
     */

    public function deleteScheme($id)
    {
        $this->scheme->deleteScheme($id);
        $message =  __('app.scheme.delete-success');
        return redirect()->route('scheme.list')->with('success',$message);
    }
    
}
