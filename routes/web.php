<?php

use App\Http\Controllers\PostsController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::middleware('auth')->resource('posts', PostsController::class);
Route::get('/dashboard', [PostsController::class, 'dashboard'])->middleware('auth')->name('dashboard');

Auth::routes();

Route::get('/posts', [App\Http\Controllers\PostsController::class, 'index'])->middleware('auth')->name('posts');
//Add a route for like
Route::put('/posts/{post}/like', [App\Http\Controllers\PostsController::class, 'like'])->name('posts.like');