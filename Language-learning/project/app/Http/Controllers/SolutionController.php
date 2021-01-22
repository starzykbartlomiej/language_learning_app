<?php

namespace App\Http\Controllers;

use App\Models\Quiz;
use App\Models\Solution;
use Auth;
use Illuminate\Http\Request;

class SolutionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Quiz $quiz)
    {
        return view("solutions.create")->withQuiz($quiz)->withQuestions($quiz->question);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Quiz $quiz)
    {
        $keys = $request->keys();
        $keys = array_slice($keys, 1);
        $answers = $request->all();
        $answers = array_slice($answers, 1);

        $i=0;
        $total = 0;
        foreach($answers as $answer)
        {
            $solution = new Solution();
            $solution->quiz_id = $quiz->id;
            $solution->user_id  = Auth::id();
            $solution->question_id = $keys[$i];
            $solution->answer = $answer;
            $solution->save();
            $i++;
        }

        $solutions = $quiz->solution->where('user_id', Auth::id());
        return view('solutions.index')->withQuiz($quiz)
                                            ->withQuestions($quiz->question)
                                            ->withKeys($keys)
                                            ->withSolutions($solutions)
                                            ->withTotal($total);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\solution  $solution
     * @return \Illuminate\Http\Response
     */
    public function show(solution $solution)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\solution  $solution
     * @return \Illuminate\Http\Response
     */
    public function edit(solution $solution)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\solution  $solution
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, solution $solution)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\solution  $solution
     * @return \Illuminate\Http\Response
     */
    public function destroy(solution $solution)
    {
        //
    }
}