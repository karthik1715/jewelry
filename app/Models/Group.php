<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
use OwenIt\Auditing\Auditable as AuditableTrait;
use Illuminate\Database\Eloquent\SoftDeletes;

class Group extends Model implements Auditable
{
    use AuditableTrait, HasFactory, SoftDeletes;

    protected $guarded = [];

    public function goldrates()
    {
        return $this->hasMany(GoldRates::class);
    }

    public function items()
    {
        return $this->hasMany(Items::class);
    }
}
