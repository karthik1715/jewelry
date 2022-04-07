<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
use OwenIt\Auditing\Auditable as AuditableTrait;
use Illuminate\Database\Eloquent\SoftDeletes;

class Items extends Model implements Auditable
{
    use AuditableTrait, HasFactory, SoftDeletes;

    protected $guarded = [];

    protected $with = [
        'group'
    ];

    public function group()
    {
        return $this->belongsTo(Group::class);
    }

    public function scheme()
    {
        return $this->hasMany(Scheme::class);
    }
}
