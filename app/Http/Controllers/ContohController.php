<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\pegawai;
use App\Models\barang;
use App\Models\kategori;
use App\Models\kategori_barang;
class ContohController extends Controller
{
    function home() {
        return view('home');
    }

    function pegawai() {
        $pegawai = Pegawai::all();
        return view('pegawai', [
            "pegawai" => $pegawai
        ]);
    }
    function kategori() {
        $kategori= Kategori::all();
        return view('kategori', [
            "kategori" => $kategori
        ]);
    }
    function kategori_barang() {
        $Kategori_barang = Kategori_barang::all();
        return view('kategori_barang', [
            "kategori_barang" => $Kategori_barang
        ]);
    }
    function user() {
        $user= User::all();
        return view('user', [
            "user" => $user
        ]);
    }
   
}