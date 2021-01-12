<?php

namespace Database\Factories;

use App\Models\Picture;
use App\Models\Question;
use Illuminate\Database\Eloquent\Factories\Factory;

class PictureFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Picture::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'question_id' => Question::factory(),
            'picture_path' => $this->faker->imageUrl(640, 480, 'cats')
        ];
    }
}
