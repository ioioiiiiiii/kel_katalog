<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\merek;
use App\Models\barang;

class merekController extends Controller
{
    public function index()
    {
        $merek = merek::with(['barang'])->get();
        return view('merek', ['merek' => $merek]);
    }

    public function create(){
        $barang = barang::all();
        return view('merek-add', compact(['barang']));
    }
    
    public function store(Request $request)
    {
        $merek = merek::create($request->all());

        if($merek){
            Session::flash('status','Sukses');
            Session::flash('message','Penambahan data Berhasil');
        }
        return redirect(('/merek'));
    }
}
