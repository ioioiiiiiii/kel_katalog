<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class kategori extends Model
{
    use HasFactory;
    protected $fillable = [
        'kategori'
    ];
    protected $table = "kategori";
    public $timestamps = false;
    public function barang()
    {
         return $this->belongsToMany(barang::class, "kategori_barang", "kategori_id",  "barang_id");
     }
}
