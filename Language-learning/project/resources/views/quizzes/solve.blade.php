<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ $quiz->user->name . ' ' . ucfirst($quiz->language->language)  .' language quiz' }}
        </h2>
    </x-slot>
    <div class="py-12">
        <form method="post" action="{{route('quizzes.store')}}">
            @csrf
            @foreach($questions as $question)
                <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                    <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg ">
                        <div class="flex items-center mt-4 px-4 pb-5">
                            {{$loop->iteration}}
                            <br/>
                            {{$question->names($question->type)}}
                            <br>
                            @switch($question->type)
                                @case(1)
                                    @break;
                                @case(2)
                                    @break;
                                @case(3)
                                    @break;
                                @case(4)
                                <div class="flex items-center">
                                    <img src="img/business.jpg" alt="123" style="width:150px">
                                    <img src="{{ $question->option[1]->data }}" alt="{{$question->option[1]->id}}" style="width:150px">
                                    <img src="{{ $question->option[2]->data }}" alt="{{$question->option[2]->id}}" style="width:150px">
                                    <img src="{{ $question->option[3]->data }}" alt="{{$question->option[3]->id}}" style="width:150px">
                                </div>
                                    @break;
                                @case(5)
                                   @break;
                            @endswitch
                        </div>
                    </div>
                </div>
                <br/>
            @endforeach
        </form>
    </div>
</x-app-layout>
