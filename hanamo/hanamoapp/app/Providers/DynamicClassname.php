<?php
namespace App\Providers;
use App\MProductGroups; // write model name here 
use Illuminate\Support\ServiceProvider;
class DynamicClassname extends ServiceProvider
{
    public function boot()
    {
        view()->composer('*',function($view){
            $view->with('product_groups', MProductGroups::all());
        });
    }
 
}
