<x-guest-layout>
    <div class="min-h-screen flex flex-col sm:justify-center items-center pt-6 sm:pt-0 bg-gray-100">
        <div>
            Comments
        </div>

        <tbody class="bg-white divide-y divide-gray-200">
            @foreach ($comments as $comment)
                <tr>
                    <td>
                    <h1><strong>{{$comment->title}} {{json_decode(\App\Models\User::select('email')->where('id',$comment->user_id)->first(),true)['email']}}</strong></h1>
                    </td>
                    <br>
                    <br>
                    <td>{{$comment->text}}</td>
                    @if($comment->user_id==\Illuminate\Support\Facades\Auth::id())
                        <td>
                    <form method="post" action="{{ route('quizzes.comments.destroy',  ['quiz'=>$quiz, 'comment'=>$comment]) }}">
                        @csrf
                        @method("DELETE")
                        <x-button class="ml-4">
                            {{ __('Delete') }}
                        </x-button>
                    </form>

                        </td>
                        <br>
                        <br>
                        <td>
                            <form method="get" action="{{ route('quizzes.comments.edit',  ['quiz'=>$quiz, 'comment'=>$comment]) }}">
                                <x-button class="ml-4">
                                    {{ __('Edit') }}
                                </x-button>
                            </form>

                        </td>
                        <br>
                        <br>
                    @endif
                </tr>
            @endforeach
        </tbody>
        <form method="get" action="{{ route('quizzes.comments.create',$quiz) }}">
            <x-button class="ml-4">
                {{ __('Add new comment') }}
            </x-button>
        </form>
    </div>
</x-guest-layout>
