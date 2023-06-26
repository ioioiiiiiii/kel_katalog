<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session; 

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

    public function edit(Request $request, $id)
    {
        $merek = merek::with( ['barang'])->findOrFail($id);
        $barang = barang::all();
        if($merek){
            Session::flash('status','Sukses');
            Session::flash('message','Data Berhasil diUpdate');
        }
        return view('merek-edit', [ 'barang' => $barang,'merek' => $merek]);
    }

    public function update(Request $request, $id)
    {
        $merek = merek::findOrFail($id);

        $merek->update($request->all());
        
        return redirect(('/merek'));
    }

    public function destroy(Request $request,$id)
    {
        $merek = merek::findOrFail($id);

        $merek ->delete($request->all());

        if($merek){
            Session::flash('status', 'Berhasil');
            Session::flash('message', 'Data berhasil Dihapus');
        }
        return redirect('/merek');
    }

}
