<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind( 'App\Repository\IGroupRepository',
        'App\Repository\GroupRepository' );
        /* $this->app->bind( 'App\Repository\IBranchRepository',
        'App\Repository\BranchRepository' );
        $this->app->bind( 'App\Repository\ICustomerRepository',
        'App\Repository\CustomerRepository' );
        $this->app->bind( 'App\Repository\IDesignationRepository',
        'App\Repository\DesignationRepository' );
        $this->app->bind( 'App\Repository\IEmployeeRepository',
        'App\Repository\EmployeeRepository' );
        $this->app->bind( 'App\Repository\IItemsRepository',
        'App\Repository\ItemRepository' );
        $this->app->bind( 'App\Repository\ISchemeRepository',
        'App\Repository\SchemeRepository' ); */
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
