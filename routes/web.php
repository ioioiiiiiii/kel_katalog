<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContohController;
use App\Http\Controllers\barangController;
use App\Http\Controllers\kategoriController;
use App\Http\Controllers\pegawaiController;
use App\Http\Controllers\merekController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\userController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::middleware(['auth'])->group(function(){
    Route::get('/', function() {
        return view('home');
    });
    Route::get('/home', function() {
        return view('home');
    });
    
    // Route::get('/home',[ContohController::class,'home']);
    // Route::get('/pegawai',[ContohController::class,'pegawai']);
    
    
    
    Route::get('/barang',[barangController::class,'index']);
    Route::get('/addbarang',[barangController::class,'create']);
    Route::post('/barang',[barangController::class,'store']);
    Route::get('/edit/{id}',[barangController::class,'edit']);
    Route::put('/barang/{id}',[barangController::class,'update']);
    Route::delete('/barang/{id}',[barangController::class,'destroy']);
    
    Route::get('/kategori',[kategoriController::class,'index']);
    Route::get('/kategori-add',[kategoriController::class,'create']);
    Route::post('/kategori',[kategoriController::class,'store']);
    Route::get('/kategori-edit/{id}',[kategoriController::class,'edit']);
    Route::put('/kategori/{id}',[kategoriController::class,'update']);
    Route::delete('/kategori/{id}',[kategoriController::class,'destroy']);
    
    
    Route::get('/pegawai',[pegawaiController::class,'index']);
    Route::get('/pegawai-add',[pegawaiController::class,'create']);
    Route::post('/pegawai',[pegawaiController::class,'store']);
    Route::get('/pegawai-edit/{id}',[pegawaiController::class,'edit']);
    Route::put('/pegawai/{id}',[pegawaiController::class,'update']);
    Route::delete('/pegawai/{id}',[pegawaiController::class,'destroy']);
    
    Route::get('/merek',[merekController::class,'index']);
    Route::get('/merek-add',[merekController::class,'create']);
    Route::post('/merek',[merekController::class,'store']);
    Route::get('/merek-edit/{id}',[merekController::class,'edit']);
    Route::put('/merek/{id}',[merekController::class,'update']);
    Route::delete('/merek/{id}',[merekController::class,'destroy']);
    
    Route::get('/user',[userController::class,'index']);
    Route::get('/user-add',[userController::class,'create']);
    Route::post('/user',[userController::class,'store']);
    Route::get('/user-edit/{id}',[userController::class,'edit']);
    Route::put('/user/{id}',[userController::class,'store']);
    Route::delete('/user/{id}',[userController::class,'destroy']);
});

Auth::routes();


