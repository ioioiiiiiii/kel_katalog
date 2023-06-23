<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Session; 


use App\Models\barang;
use Illuminate\Http\Request;
use App\Models\pegawai;
use App\Models\merek;
use App\Models\kategori;

class barangController extends Controller

{
    public function index()
     {
        $barang = barang::with(['pegawai','kategori','merek'])->get();
        return view('barang', ["barang" => $barang]);
    }

    public function create(){
        $pegawai = pegawai::all();
        $kategori = kategori::all();
        $merek = merek::all();
        return view('addbarang', compact(['pegawai','kategori','merek']));
    }
    
    public function store(Request $request)
   {
       $barang = barang::create($request->all());
        if($barang){
            Session::flash('status','Sukses');
            Session::flash('message','Penambahan data Berhasil');
        }

        return redirect(('/barang'));
    }

    public function edit(Request $request, $id)
    {
        $barang = barang::with( ['pegawai','kategori','merek'])->findOrFail($id);
        $pegawai = pegawai::all();
        $kategori = kategori::all();
        $merek = merek::all();
        if($barang){
            Session::flash('status','Sukses');
            Session::flash('message','Data Berhasil diUpdate');
        }
        return view('edit', ['pegawai' => $pegawai, 'barang' => $barang, 'kategori'=>$kategori,'merek'=>$merek]);
    }

    public function update(Request $request, $id)
    {
        $barang = barang::findOrFail($id);

        $barang->update($request->all());
        
        return redirect(('/barang'));
    }

    public function destroy($id)
    {
        $barang = barang::find($id);

        $barang::destroy($id);

        if($barang){
            Session::flash('status', 'Berhasil');
            Session::flash('message', 'Data berhasil Dihapus');
        }
        return redirect('/barang');
    }

}
