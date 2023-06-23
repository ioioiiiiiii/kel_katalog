<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class barang extends Model
{
    use HasFactory;

    protected $fillable = [
    'nama',
    'stok',
    'merek_id',
    'harga_pokok',
    'harga_jual',
    'pegawai_id',
    
    ];

    protected $table = 'barang';
    public $timestamps = false;


    public function pegawai()
    {
        return $this->belongsTo(pegawai::class,'pegawai_id');
    }

    public function kategori()
    {
         return $this->belongsToMany(kategori::class, "kategori_barang", "barang_id", "kategori_id");
     }
    public function merek()
    {
         return $this->belongsTo(merek::class,'merek_id','id');
     }
}
    
