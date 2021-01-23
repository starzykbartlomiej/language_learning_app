<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Subcomment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentSubcommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param  \App\Models\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function index(Comment $comment)
    {
        $subcomments=Subcomment::where('comment_id',$comment->id)->get();
        return view('commentssubcomments.index')->withComment($comment)->withSubcomments($subcomments);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param  \App\Models\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function create(Comment $comment)
    {
        return view("commentssubcomments.create")->withComment($comment);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Comment $comment)
    {
        $this->validate($request, [
            'title' => 'required',
            'text' => 'required',
        ]);
        $subcomment = new Subcomment();
        $subcomment->title = $request->title;
        $subcomment->text = $request->text;
        $subcomment->comment_id=$comment->id;
        $subcomment->user_id=$id = Auth::id();
        $subcomment->save();

        return redirect(route('comments.subcomments.index', $comment));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Comment  $comment
     * @param  \App\Models\Subcomment  $subcomment
     * @return \Illuminate\Http\Response
     */
    public function show(Comment $comment, Subcomment $subcomment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Comment  $comment
     * @param  \App\Models\Subcomment  $subcomment
     * @return \Illuminate\Http\Response
     */
    public function edit(Comment $comment, Subcomment $subcomment)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Comment  $comment
     * @param  \App\Models\Subcomment  $subcomment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Comment $comment, Subcomment $subcomment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Comment  $comment
     * @param  \App\Models\Subcomment  $subcomment
     * @return \Illuminate\Http\Response
     */
    public function destroy(Comment $comment, Subcomment $subcomment)
    {
        //
    }
}
