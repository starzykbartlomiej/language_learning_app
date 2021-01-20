<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::resource('/comments', App\Http\Controllers\CommentController::class)->middleware('auth');

Route::resource('/quizzes', App\Http\Controllers\QuizController::class)->middleware('auth');
Route::resource('/languages',App\Http\Controllers\LanguageController::class)->middleware('auth');
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');
Route::resource('quizzes.comments', App\Http\Controllers\QuizCommentController::class)->middleware('auth');
Route::resource('quizzes.questions', App\Http\Controllers\QuestionController::class)->middleware('auth');



require __DIR__.'/auth.php';
