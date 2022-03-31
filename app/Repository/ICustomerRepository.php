<?php 
namespace App\Repository;

interface ICustomerRepository 
{
    public function getAllCustomers();

    public function getCustomerById($id);

    public function createOrUpdate( $id = null, $collection = [] );

    public function deleteCustomer($id);
}