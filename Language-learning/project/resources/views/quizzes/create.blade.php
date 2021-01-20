<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Creating a quiz') }}
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
                        <tr>
                            <td class="px-6 py-4 whitespace-nowrap">
                            </td>

                            <td class="px-6 py-4 whitespace-nowrap">
                            </td>

                            <td class="px-6 py-4 whitespace-nowrap">
                                <div class="flex items-center justify-end mt-4 px-4 pb-5">
                                    <form method="get" action="{{}}">
                                        <x-button class="ml-4">
                                            {{ __('Add new question') }}
                                        </x-button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br/>
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="flex items-center justify-end mt-4 px-4 pb-5">
                    <form method="post" action="{{route('quizzes.store')}}">
                        @csrf
                        <label for="language">Language: </label>
                        {{--                            <input type="text" name="language">--}}
                        <select class="form-control" name="language" id="cars">
                            @foreach(\App\Models\Language::all() as $language)
                                <option>{{$language->language}}</option>
                            @endforeach
                        </select>
                        <x-button class="ml-4">
                            {{ __('Create quiz') }}
                        </x-button>
                    </form>

                    <form method="get" action="{{ route('languages.create') }}">
                        <x-button class="ml-4">
                            {{ __('Add new language') }}
                        </x-button>
                    </form>
                </div>
            </div>
        </div>


    </div>
</x-app-layout>
