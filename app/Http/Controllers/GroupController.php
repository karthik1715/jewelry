<?php

namespace App\Http\Controllers;

use App\Models\Group;
use App\Http\Controllers\Controller;
use App\Repository\IGroupRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Session;

class GroupController extends Controller
{
    public function __construct(IGroupRepository $group)
    {
        $this->group = $group;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function showGroups(Request $request)
    {
        $collection = $request->except(['_token','_method']);
        $groups = $this->group->getAllGroups($collection);
        // return View::make('admin.group.group', compact('groups'));
    }
    
    /**
     * Show the form for creating or updating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function createGroup()
    {
        // return View::make('admin.group.form');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Group  $group
     * @return \Illuminate\Http\Response
     */

    public function getGroup($id)
    {
        // $group = $this->group->getGroupById($id);
        // return View::make('admin.group.form', compact('group'));
    }
    
    /**
     * Add or Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Group  $group
     * @return \Illuminate\Http\Response
     */

    public function saveGroup(Request $request, $id = null)
    {   
        $collection = $request->except(['_token','_method']);
        
        if( ! is_null( $id ) ) 
        {
            $this->group->createOrUpdate($id, $collection);
            $message =  __('app.contacts.group.update-success');
        }
        else
        {
            $this->group->createOrUpdate($id = null, $collection);
            // $message =  __('app.contacts.group.create-success');
        }
        /* 
        return redirect()->route('group.list')->with('success',$message); */
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Group  $group
     * @return \Illuminate\Http\Response
     */

    public function deleteGroup($id)
    {
        $this->group->deleteGroup($id);
        /* $message =  __('app.contacts.group.delete-success');
        return redirect()->route('group.list')->with('success',$message); */
    }
    
}
