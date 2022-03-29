<?php 
namespace App\Repository;

interface IGroupRepository 
{
    public function getAllGroups();

    public function getGroupById($id);

    public function createOrUpdate( $id = null, $collection = [] );

    public function deleteGroup($id);
}