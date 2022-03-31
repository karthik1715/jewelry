<?php 
namespace App\Repository;

interface IItemsRepository 
{
    public function getAllItems();

    public function getItemsById($id);

    public function createOrUpdate( $id = null, $collection = [] );

    public function deleteItem($id);
}