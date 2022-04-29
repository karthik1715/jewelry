<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use App\Models\Group;
use App\Models\Items;
use App\Models\Customer;
use App\Models\Scheme;
use App\Models\GoldPurity;

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
        $schemeResult   = Scheme::with('interests','gold_rates')->where('loan_basis',$scheme_type)
                                 ->where('name', 'LIKE', '%'. $query. '%')->get();
        return response()->json($schemeResult);
    } 

    # Search Group By Name
    public function autocompleteSearchGroup(Request $request)
    {
        $query = $request->get('term');
        $filterResult = Group::with('goldrates')->where('name', 'LIKE', '%'. $query. '%')->get();
        $res = array();

        if( count($filterResult) ) {
            foreach( $filterResult as $item) {

                if( !empty($item->goldrates[0]['current_rate']) ) {
                    $current_rate = $item->goldrates[0]['current_rate'];
                } else {
                    $current_rate = 0;
                }

                $res[] = array("value"=>$item['id'],"label"=>$item['name'],"currate"=>$current_rate);
            }
        }

        return response()->json($res);
    } 

    # Search Item By Name
    public function autocompleteSearchItemNames(Request $request)
    {
        $query  = $request->get('term');
        // $group_id = $request->get('groupId');
        // $filterResult = Items::where('name', 'LIKE', '%'. $query. '%')->where('group_id', $group_id)->get();
        $filterResult = Items::where('name', 'LIKE', '%'. $query. '%')->get();

        $res = array();

        if( count($filterResult) ) {
            foreach( $filterResult as $item) {
                $res[] = array("value"=>$item['id'],"label"=>$item['name']);
            }
        }

        return response()->json($res);
    } 

    # Search Item By Name
    public function getItemPurity(Request $request)
    {
        $group_id = $request->get('groupId');
        $count    = $request->get('count');
        $filterResult = GoldPurity::where('group_id', $group_id)->where('status', '1')->get();
        $res = '<select type="text" id="add_items_purity_in_karat_'.$count.'" name="add_items['.$count.'][purity_in_karat]" data-id='.$count.' class="form-control" onchange="selectPurity(this)" >';

        if( count($filterResult) ) {
            $res .= '<option value="">Select Purity</option>';
            foreach( $filterResult as $item) {
                $res .= '<option value="'.$item['id'].'" data-id="'.$item['purity'].'" >'.$item['karat_type'].'</option>';
            }
            $res .= '</select>';
        }else{
            $res .= '<option value="">Purity not available</option>';
        }
        return response()->json($res);
    } 
}