<?php

namespace App\Http\Controllers;

use App\Models\Option;
use App\Models\Question;
use App\Models\Quiz;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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
            case 1:
                return view('questions.question1.create')->withQuiz($quiz);
            case 2:
                return view('questions.question2.create')->withQuiz($quiz);
            case 3:
                return view('questions.question3.create')->withQuiz($quiz);
            case 4:
                return view('questions.question4.create')->withQuiz($quiz);
            case 5:
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
        if($question->type == 3 || $question->type == 4)
        {
            $option = new Option();
            $option->data = $request->answerA;
            $option->question_id = $question->id;
            $option->save();

            $option = new Option();
            $option->data = $request->answerB;
            $option->question_id = $question->id;
            $option->save();

            $option = new Option();
            $option->data = $request->answerC;
            $option->question_id = $question->id;
            $option->save();

            $option = new Option();
            $option->data = $request->answerD;
            $option->question_id = $question->id;
            $option->save();
        }
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
    public function edit($quiz, $question)
    {
        $question = Question::query()->where('id', $question)->first();
        $quizes = Quiz::query()->where('id', $quiz)->first();
        switch($question->type) {
            case "1":
            {
                return view('questions.question1.edit')->withQuiz($quizes)->withQuestion($question);
            }
            default:
            {
                return "No editing enabled yet";
            }
        }

       // return view('questions.question1.edit')->withQuiz($question);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $quiz, $question)
    {
        Question::query()->where('id', $question)->update(['answer' => $request->answer, 'in_english'=>$request->in_english]);
        $quiz = Quiz::query()->where('id', $quiz)->first();
        return view('quizzes.details')->withQuiz($quiz);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {

    }
}
