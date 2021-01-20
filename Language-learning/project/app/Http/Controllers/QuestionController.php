<?php

namespace App\Http\Controllers;

use App\Models\Question;
use App\Models\Quiz;
use Illuminate\Http\Request;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Quiz $quiz)
    {
        //TODO add user name in questions index
        $questions = Question::all()->where('quiz_id', $quiz->id);
        return view('questions.index')->withQuiz($quiz)->withQuestions($questions);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request, Quiz $quiz)
    {
        switch($request->question_type)
        {
            case '1':
                return view('questions.question1.create')->withQuiz($quiz);
            case '2':
                return view('questions.question2.create')->withQuiz($quiz);
            case '3':
                return view('questions.question3.create')->withQuiz($quiz);
            case '4':
                return view('questions.question4.create')->withQuiz($quiz);
            case '5':
                return view('questions.question5.create')->withQuiz($quiz);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Quiz $quiz)
    {
        //TODO validation
        $question = new Question();
        $question->in_english = $request->in_english;
        $question->answer = $request->answer;
        $question->quiz_id = $quiz->id;
        $question->is_correct = true;
        $question->type = $request->type;
        $question->save();
        return redirect()->route('quizzes.questions.index', $quiz);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function show(Question $question)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function edit(Question $question)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Question $question)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {
        //
    }
}
