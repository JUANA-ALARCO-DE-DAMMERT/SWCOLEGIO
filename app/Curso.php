<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Curso extends Model
{
    protected $table = 'curso';
    protected $primaryKey = 'curs_id';
    public $timestamps = false;
    protected $fillable = [
        'curs_iddocente',
        'curs_idasig',
        'curs_año'
    ];
    protected $guarded = [];
}
