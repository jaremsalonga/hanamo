<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MInventory extends Model
{
    //
    protected $table = 'inventories';
    protected $fillable = ['id','product_group_id','in_stock'];
}
