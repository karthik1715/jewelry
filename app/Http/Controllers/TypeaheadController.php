<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use App\Models\Group;
use App\Models\Items;

class TypeaheadController extends Controller
{
    # Search Group Name
    public function autocompleteSearch(Request $request)
    {
        $query = $request->get('query');
        $filterResult = Group::where('name', 'LIKE', '%'. $query. '%')->get();
        return response()->json($filterResult);
    } 

    # Search Item Name
    public function autocompleteSearchItem(Request $request)
    {
        $query = $request->get('query');
        $itemResult = Items::where('name', 'LIKE', '%'. $query. '%')->get();
        return response()->json($itemResult);
    } 
    
}