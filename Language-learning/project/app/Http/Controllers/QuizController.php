<?php

namespace App\Http\Controllers;
use App\Models\Language;
use Illuminate\Support\Facades\Auth;
use App\Models\Quiz;
use App\Models\User;
use Illuminate\Http\Request;
use PhpOption\None;

class QuizController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user=Auth::user();
        $languges=Language::all();
        $quizzes = Quiz::all();
        return view('quizzes.index')->withQuizzes($quizzes);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $language=Language::all();
        return view('quizzes.create')->withLanguage($language);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'language' => 'required',
        ]);
        $quiz=new Quiz();
        $language=$request->input('language-list');
        $quiz->language=$language->language;
        $quiz->language_id=$language->id;
        $quiz->user_id=Auth::user()->id;
        $quiz->save();
        return response(redirect()->route('quizzes.index'));
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Quiz  $quiz
     * @return \Illuminate\Http\Response
     */
    public function show(Quiz $quiz)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Quiz  $quiz
     * @return \Illuminate\Http\Response
     */
    public function edit(Quiz $quiz)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Quiz  $quiz
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Quiz $quiz)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Quiz  $quiz
     * @return \Illuminate\Http\Response
     */
    public function destroy(Quiz $quiz)
    {
        //
    }
}
