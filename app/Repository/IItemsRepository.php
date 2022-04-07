<?php 
namespace App\Repository;

interface IItemsRepository 
{
    public function getAllItems();

    public function getItemsById($id);

    public function createOrUpdate( $id = null, $collection = [] );

    public function changeStatus( $id = null, $status = null );

    public function deleteItem($id);
}