<?php 
namespace App\Repository;

interface IGoldLoanRepository 
{
    public function getAllGoldLoans();

    public function getGoldLoanById($id);

    public function createOrUpdate( $id = null, $collection = [] );

    public function changeStatus( $id = null, $status = null );

    public function deleteGoldLoan($id);
}