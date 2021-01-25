<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __("Details of quiz number: $quiz->id") }}
        </h2>
    </x-slot>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <table class="min-w-full divide-y divide-gray-200">
                        <thead class="bg-gray-50">
                        <tr>
                            <th scope="col"
                                class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                Type of question
                            </th>
                            <th scope="col"
                                class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                Word in {{ $quiz->get_language($quiz->language_id) }}
                            </th>
                            <th scope="col"
                                class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                Answer
                            </th>
                            <th scope="col"
                                class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                Is question correct?
                            </th>
                        </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200">
                        @foreach($quiz->question as $questions)
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="text-sm text-gray-500">{{ $questions->names($questions->type)}}</div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="text-sm text-gray-900">{{ $questions->in_english }}</div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="text-sm text-gray-900">{{ $questions->answer }}</div>
                                </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        @if( $questions->is_correct == 0)
                                        <div class="text-sm text-gray-900">Question was flagged!</div>
                                        @else
                                            <div class="text-sm text-gray-900">Correct</div>
                                        @endif
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                <form method="get" action="{{ route('quizzes.questions.edit', ['quiz' => $quiz->id, 'question' => $questions])}}">
                                    <x-button class="ml-4" id="discusion.{{$quiz->id}}">
                                        {{ __('Edit') }}
                                    </x-button>
                                </form>
                                    </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <form method="post" action="{{ route('quizzes.questions.destroy', ['quiz' => $quiz->id, 'question' => $questions])}}">
                                        @method('DELETE')
                                        @csrf
                                        <x-button class="ml-4" id="discusion.{{$quiz->id}}">
                                            {{ __('Delete') }}
                                        </x-button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
            </div>
        </div>
    </div>
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
            <div class="flex items-center justify-center mt-4 px-4 pb-5">
                <form method="get" action="{{ route('quizzes.questions.create', $quiz )}}">
                    @csrf
                    <input type="hidden" name="create_new" value="create_new"/>
                    <label for="question_type">Question type: </label>
                    <select class="form-control rounded-md" name="question_type" id="question_type">
                        <option value = 1>{{ __('Word translation') }}</option>
                        <option value = 2>{{ __('Sentence translation') }}</option>
                        <option value = 3>{{ __('Multiple choice') }}</option>
                        <option value = 4>{{ __('Multiple image choice') }}</option>
                        <option value = 5>{{ __('Build sentece from blocks') }}</option>
                    </select>
                    <x-button class="ml-4">
                        {{ __('Add new question') }}
                    </x-button>
                </form>
                <div class="flex items-center justify-center mt-4 px-4 pb-5">
                    {{--                    <a href="{{ url('/quizzes') }}">--}}
                    <form method="get" action="{{ route('dashboard.index')}}">
                        <x-button aclass="ml-4">
                            {{ __('Finish quiz editing') }}
                        </x-button>
                    </form>
                    {{--</a>--}}
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
