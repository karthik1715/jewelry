<?php

namespace App\Http\Controllers;

use App\Models\Items;
use App\Http\Controllers\Controller;
use App\Repository\IItemsRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Session;

class ItemsController extends Controller
{
    public function __construct(IItemsRepository $item)
    {
        $this->item = $item;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function showItems(Request $request)
    {
        $collection = $request->except(['_token','_method']);
        $items = $this->item->getAllItems($collection);
        return View::make('admin.item.item', compact('items'));
    }
    
    /**
     * Show the form for creating or updating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function createItem()
    {
        return View::make('admin.item.itemform');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Items  $item
     * @return \Illuminate\Http\Response
     */

    public function getItem($id)
    {
        $item = $this->item->getItemsById($id);
        return View::make('admin.item.itemform', compact('item'));
    }
    
    /**
     * Add or Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Items  $item
     * @return \Illuminate\Http\Response
     */

    public function saveItem(Request $request, $id = null)
    {   
        $collection = $request->except(['_token','_method']);
        
        if( ! is_null( $id ) ) 
        {
            $this->item->createOrUpdate($id, $collection);
            $message =  __('app.item.update-success');
        }
        else
        {
            $this->item->createOrUpdate($id = null, $collection);
            $message =  __('app.item.create-success');
        }
        
        return redirect()->route('item.list')->with('success',$message);
    }

    public function changeStatus(Request $request, $id = null, $status = null)
    {   
        $collection = $request->except(['_token','_method']);
        $this->item->changeStatus($id, $status);
        $message =  __('app.item.update-success');
        return redirect()->route('item.list')->with('success',$message); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Items  $item
     * @return \Illuminate\Http\Response
     */

    public function deleteItem($id)
    {
        $this->item->deleteItem($id);
        $message =  __('app.item.delete-success');
        return redirect()->route('item.list')->with('success',$message);
    }
    
}
