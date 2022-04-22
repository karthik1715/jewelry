<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
use OwenIt\Auditing\Auditable as AuditableTrait;
use Illuminate\Database\Eloquent\SoftDeletes;

class Scheme extends Model implements Auditable
{
    use AuditableTrait, HasFactory, SoftDeletes;

    protected $with = [
        'item','interests'
    ];

    public function group()
    {
        return $this->belongsTo(Group::class,'group_ref_id','id');
    }

    public function item()
    {
        return $this->belongsTo(Items::class,'item_ref_id','id');
    }

    public function interests()
    {
        return $this->hasMany(InterestRates::class);
    }
}
