<?php 
namespace App\Repository;

interface IGoldRatesRepository 
{
    public function getAllGoldRates();

    public function getGoldRatesById($id);

    public function createOrUpdate( $id = null, $collection = [] );

    public function deleteGoldRate($id);
}