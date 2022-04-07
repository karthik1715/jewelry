<?php 

namespace App\Repository;

use App\Models\Items;
use App\Repository\IItemsRepository;
use App\Http\Resources\ItemsResource;


class ItemsRepository implements IItemsRepository
{   
    protected $item = null;

    public function getAllItems( $collection = [], $pagLimit= null )
    {
        $items = Items::orderBy('id','DESC');
        if( isset($collection['org_search']) && ($collection['org_search'] != '') ){
            
            $searchData = $collection['org_search'] ?? '';
            $items->when($searchData, function ($q) use($searchData) { 
                return $q->orWhere('name', 'like', '%'. $searchData . '%');
            });

        }

        if( $pagLimit == 'all') {
            $itemlists  = $items->where('status', '=', 'active')->get();
        } else {
            $itemlists  = $items->paginate(config('global.pagination_records'));
        }

        $itemsList  = ItemsResource::collection($itemlists);
        return $itemsList; 
    }

    public function getItemsById($id)
    {
        return Items::find($id);
    }

    public function createOrUpdate( $id = null, $collection = [] )
    {   
        if(is_null($id)) {
            $item               = new Items;
            $item->group_id     = $collection['group_id'];
            $item->name         = $collection['name'];
            $item->description  = $collection['description'];
            $item->created_by   = 1;    //auth()->id();
            $result = $item->save();
            
            $upitem = Items::find($item->id);
            $upitem->item_code = sprintf("%'06s",$item->id);
            return $upitem->save();
            
        }
        $item = Items::find($id);
        $item->group_id         = $collection['group_id'];
        $item->name             = $collection['name'];
        $item->description      = $collection['description'];
        $item->updated_by       = 1;    //auth()->id();
        return $item->save();
    }

    public function changeStatus( $id = null, $status = null )
    {   
        $group                  = Items::find($id);
        if($status == 0) {
            $group->status            = 1;
        } else {
            $group->status            = 0;
        }
        $group->updated_by      = 1;//auth()->id();
        return $group->save();
    }
    
    public function deleteItem($id)
    {
        return Items::find($id)->delete();
    }
}