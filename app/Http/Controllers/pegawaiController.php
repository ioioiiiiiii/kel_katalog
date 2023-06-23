<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Session; 


use Illuminate\Http\Request;
use App\Models\pegawai;
use App\Models\user;
use App\Models\barang;

class pegawaiController extends Controller
{
    public function index()
     {
        $pegawai = pegawai::with(['barang','user'])->get();
        return view('pegawai', ["pegawai" => $pegawai]);
    }
    public function create(){
        $barang = barang::all();
        $user = user::all();
        return view('pegawai-add', compact(['barang','user']));
    }
    
    public function store(Request $request)
    {
       $pegawai = pegawai::create($request->all());
        if($pegawai){
            Session::flash('status','Sukses');
            Session::flash('message','Penambahan data Berhasil');
        }
        return redirect(('/pegawai'));
    }

    public function edit(Request $request, $id)
    {
        $pegawai = pegawai::with( ['barang','user'])->findOrFail($id);
        $barang = barang::all();
        $user = user::all();
        if($pegawai){
            Session::flash('status','Sukses');
            Session::flash('message','Data Berhasil diUpdate');
        }
        return view('pegawai-edit', ['pegawai' => $pegawai, 'barang' => $barang, 'user'=>$user]);
    }

    public function update(Request $request, $id)
    {
        $pegawai = pegawai::findOrFail($id);

        $pegawai->update($request->all());
        
        return redirect(('/pegawai'));
    }

    public function destroy(Request $request,$id)
    {
        $pegawai = pegawai::findOrFail($id);

        $pegawai ->delete($request->all());

        if($pegawai){
            Session::flash('status', 'Berhasil');
            Session::flash('message', 'Data berhasil Dihapus');
        }
        return redirect('/pegawai');
    }
}
