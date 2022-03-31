<?php 
namespace App\Repository;

interface ISchemeRepository 
{
    public function getAllSchemes();

    public function getSchemeById($id);

    public function createOrUpdate( $id = null, $collection = [] );

    public function deleteScheme($id);
}