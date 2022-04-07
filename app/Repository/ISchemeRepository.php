<?php 
namespace App\Repository;

interface ISchemeRepository 
{
    public function getAllSchemes();

    public function getSchemeById($id);

    public function createOrUpdate( $id = null, $collection = [] );

    public function changeStatus( $id = null, $status = null );

    public function deleteScheme($id);
}