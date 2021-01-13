<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Creating a quiz') }}
        </h2>
    </x-slot>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    <form method="post" action="{{route('quizzes.store')}}">
                        @csrf
                        <label for="language">Language:</label>
{{--                            <input type="text" name="language">--}}
                        <select class="form-control" name="language" id="cars">
                            @foreach(\App\Models\Language::all() as $language)
                                <option>{{$language->language}}</option>
                            @endforeach
                        </select>
                        <x-button class="ml-4">
                            {{ __('Create') }}
                        </x-button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
