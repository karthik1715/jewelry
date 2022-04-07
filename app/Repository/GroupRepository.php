<?php 

namespace App\Repository;
use App\Models\Group;
use App\Repository\IGroupRepository;
use App\Http\Resources\GroupResource;


class GroupRepository implements IGroupRepository
{   
    protected $group = null;

    public function getAllGroups( $collection = [], $pagLimit= null )
    {
        $groups = Group::orderBy('id','DESC');
        if( isset($collection['org_search']) && ($collection['org_search'] != '') ){
            
            $searchData = $collection['org_search'] ?? '';
            $groups->when($searchData, function ($q) use($searchData) { 
                return $q->orWhere('name', 'like', '%'. $searchData . '%');
            });

        }

        if( $pagLimit == 'all') {
            $grouplists  = $groups->where('status', '=', 'active')->get();
        } else {
            $grouplists  = $groups->paginate(config('global.pagination_records'));
        }

        $groupsList  = GroupResource::collection($grouplists);
        return $groupsList; 
    }

    public function getGroupById($id)
    {
        return Group::find($id);
    }

    public function createOrUpdate( $id = null, $collection = [] )
    {   
        if(is_null($id)) {
            $group              = new Group;
            $group->name        = $collection['name'];
            $group->created_by  = 1;//auth()->id();
            return $group->save();
        }
        $group                  = Group::find($id);
        $group->name            = $collection['name'];
        $group->updated_by      = 1;//auth()->id();
        return $group->save();
    }

    public function changeStatus( $id = null, $status = null )
    {   
        $group                  = Group::find($id);
        if($status == 0) {
            $group->status            = 1;
        } else {
            $group->status            = 0;
        }
        $group->updated_by      = 1;//auth()->id();
        return $group->save();
    }
    
    public function deleteGroup($id)
    {
        return Group::find($id)->delete();
    }
}