<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Session; 


class userController extends Controller
{
    public function index()
    {
        $users = User::all();
        return view('user', ['user' => $users]);
    }

    public function create(){
        $user = User::all();
        return view('user-add', compact(['user']));
    }
    
    public function store(Request $request)
    {
        $user = User::create($request->all());

        if($user){
            Session::flash('status','Sukses');
            Session::flash('message','Penambahan data Berhasil');
        }
        return redirect(('/user'));
    }

    public function edit(Request $request, $id)
    {
        $user = User::findOrFail($id);
        if($user){
            Session::flash('status','Sukses');
            Session::flash('message','Data Berhasil diUpdate');
        }
        return view('user-edit', [ 'user' => $user]);
    }

    public function update(Request $request, $id)
    {
        $user = user::findOrFail($id);

        $user->update($request->all());
        
        return redirect(('/user'));
    }

    public function destroy(Request $request,$id)
    {
        $user = User::findOrFail($id);

        $user ->delete($request->all());

        if($user){
            Session::flash('status', 'Berhasil');
            Session::flash('message', 'Data berhasil Dihapus');
        }
        return redirect('/user');
    }

}
