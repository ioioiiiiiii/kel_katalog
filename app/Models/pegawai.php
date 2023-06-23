<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class pegawai extends Model
{
    use HasFactory;

    protected $fillable = [
        'nama',
        'alamat',
        'tlpn'
    ];

    public $timestamps = false;
    protected $table = "pegawai";

    public function user()
    {
         return $this->hasOne(user::class, "pegawai_id");
     }


    public function barang()
    {
        return $this->hasMany(barang::class, 'pegawai_id', 'id');
    }
}



