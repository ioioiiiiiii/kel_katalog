<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class merek extends Model
{
    use HasFactory;
    protected $fillable = [
        'merek'
    ];
    protected $table = "merek";
    public $timestamps = false;
    public function barang()
    {
         return $this->hasMany(barang::class, "merek_id","id");
     }
}
