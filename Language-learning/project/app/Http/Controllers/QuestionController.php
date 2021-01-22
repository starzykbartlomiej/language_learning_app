<?php

namespace App\Http\Controllers;

use App\Models\Option;
use App\Models\Question;
use App\Models\Quiz;
use File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Storage;

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
        // ...

        //TODO refactor
        $question = new Question();
        $question->in_english = $request->in_english;
        $question->answer = $request->answer;
        $question->quiz_id = $quiz->id;
        $question->is_correct = true;
        $question->type = $request->type;
        $question->save();
        if($question->type == 3 || $question->type == 4)
        {
            $option1 = new Option();
            $image = $request->file('Answer_A');
            $new_name = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images'), $new_name);
            $option1->data = "images/" . $new_name;
            $option1->question_id = $question->id;
            $option1->save();

            $option2 = new Option();
            $image = $request->file('Answer_B');
            $new_name = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images'), $new_name);
            $option2->data = "images/" . $new_name;
            $option2->question_id = $question->id;
            $option2->save();

            $option3 = new Option();
            $image = $request->file('Answer_C');
            $new_name = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images'), $new_name);
            $option3->data = "images/" . $new_name;
            $option3->question_id = $question->id;
            $option3->save();

            $option4 = new Option();
            $image = $request->file('Answer_D');
            $new_name = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images'), $new_name);
            $option4->data = "images/" . $new_name;
            $option4->question_id = $question->id;
            $option4->save();

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
