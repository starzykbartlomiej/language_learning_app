<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Quiz nr '. $quiz->id .' creator. Add questions.') }}
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
                            Question number
                        </th>
                        <th scope="col"
                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                            Question type
                        </th>
                        <th scope="col"
                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                            Details
                        </th>
                    </tr>
                    </thead>

                    <tbody class="bg-white divide-y divide-gray-200">
                            @foreach($questions as $question)
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    {{$loop->iteration}}
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    {{$question->names($question->type)}}
                                </td>
                                <td>

                                </td>
                            </tr>
                            @endforeach
                    </tbody>
                </table>
            </div>
        </div>

        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="flex items-center justify-end mt-4 px-4 pb-5">
                    <form method="get" action="{{ route('quizzes.questions.create', $quiz )}}">
                        @csrf
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

                    <a href="{{ url('/quizzes') }}">
                        <x-button class="ml-4">
                            {{ __('Finish quiz creation') }}
                        </x-button>
                    </a>

                </div>
            </div>
        </div>
    </div>


    </div>
</x-app-layout>
