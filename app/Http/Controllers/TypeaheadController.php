<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use App\Models\Group;
use App\Models\Items;
use App\Models\Customer;
use App\Models\Scheme;

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

    # Search Customer Name
    public function autocompleteSearchCusCode(Request $request)
    {
        $query = $request->get('query');
        $cusResult = Customer::where('name', 'LIKE', '%'. $query. '%')->get();
        return response()->json($cusResult);
    } 
    
    # Search Scheme Name
    public function autocompleteSearchSchemeCode(Request $request)
    {
        $query          = $request->get('query');
        $scheme_type    = $request->get('scheme_type');
        $schemeResult   = Scheme::with('goldrates')->where('loan_basis',$scheme_type)
                                 ->where('name', 'LIKE', '%'. $query. '%')->get();
        return response()->json($schemeResult);
    } 
}