<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MProducts extends Model
{
    //
    protected $table = 'products';
    protected $fillable = ['product_group_id','name'];
}
