<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session; 


use App\Models\kategori;
use App\Models\barang;

class kategoriController extends Controller
{
    public function index()
    {
        $kategori = kategori::with(['barang'])->get();
        return view('kategori', ['kategori' => $kategori]);
    }

    public function create(){
        $barang = barang::all();
        return view('kategori-add', compact(['barang']));
    }
    
    public function store(Request $request)
    {
        $kategori = kategori::create($request->all());

        if($kategori){
            Session::flash('status','Sukses');
            Session::flash('message','Penambahan data Berhasil');
        }
        return redirect(('/kategori'));
    }

    public function edit(Request $request, $id)
    {
        $kategori = kategori::with( ['barang'])->findOrFail($id);
        $barang = barang::all();
        if($kategori){
            Session::flash('status','Sukses');
            Session::flash('message','Data Berhasil diUpdate');
        }
        return view('kategori-edit', [ 'barang' => $barang,'kategori' => $kategori]);
    }

    public function update(Request $request, $id)
    {
        $kategori = kategori::findOrFail($id);

        $kategori->update($request->all());
        
        return redirect(('/kategori'));
    }

    public function destroy(Request $request,$id)
    {
        $kategori = kategori::findOrFail($id);

        $kategori ->delete($request->all());

        if($kategori){
            Session::flash('status', 'Berhasil');
            Session::flash('message', 'Data berhasil Dihapus');
        }
        return redirect('/kategori');
    }

}
