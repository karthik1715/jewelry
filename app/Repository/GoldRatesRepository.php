<?php 

namespace App\Repository;
use App\Models\GoldRates;
use App\Repository\IGoldRatesRepository;
use App\Http\Resources\GoldRatesResource;


class GoldRatesRepository implements IGoldRatesRepository
{   
    protected $goldrate = null;

    public function getAllGoldRates( $collection = [], $pagLimit= null )
    {
        $goldrates = GoldRates::orderBy('id','DESC');
        if( isset($collection['org_search']) && ($collection['org_search'] != '') ){
            
            $searchData = $collection['org_search'] ?? '';
            $goldrates->when($searchData, function ($q) use($searchData) { 
                return $q->orWhere('name', 'like', '%'. $searchData . '%');
            });

        }

        if( $pagLimit == 'all') {
            $goldratelists  = $goldrates->where('status', '=', 'active')->get();
        } else {
            $goldratelists  = $goldrates->paginate(config('global.pagination_records'));
        }

        $goldratesList  = GoldRatesResource::collection($goldratelists);
        return $goldratesList; 
    }

    public function getGoldRatesById($id)
    {
        return GoldRates::find($id);
    }

    public function createOrUpdate( $id = null, $collection = [] )
    {   
        if(is_null($id)) {
            $goldrate               = new GoldRates;
            $goldrate->group_id     = $collection['group_id'];
            $goldrate->current_rate = $collection['current_rate'];
            $goldrate->current_date = $collection['current_date'];
            $goldrate->notes        = $collection['notes'];
            $goldrate->created_by   = auth()->id();
            return $goldrate->save();
        }
        $goldrate = GoldRates::find($id);
        $goldrate->group_id         = $collection['group_id'];
        $goldrate->current_rate     = $collection['current_rate'];
        $goldrate->current_date     = $collection['current_date'];
        $goldrate->notes            = $collection['notes'];
        $goldrate->updated_by       = auth()->id();
        return $goldrate->save();
    }

    public function changeStatus( $id = null, $status = null )
    {   
        $group                  = GoldRates::find($id);
        if($status == 0) {
            $group->status            = 1;
        } else {
            $group->status            = 0;
        }
        $group->updated_by      = auth()->id();
        return $group->save();
    }
    
    public function deleteGoldRate($id)
    {
        return GoldRates::find($id)->delete();
    }
}