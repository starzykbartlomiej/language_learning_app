<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;

    public function quiz()
    {
        return $this->belongsTo(Quiz::class);
    }

    public function option()
    {
        return $this->hasMany(Option::class);
    }
    public function names($quiz)
    {
        switch($quiz)
        {
            case '1':
                return 'Word translation';
            case '2':
                return 'Sentence translation';
            case '3':
                return 'Multiple choice';
            case '4':
                return 'Multiple image choice';
            case '5':
                return 'Build sentece from blocks';
        }
    }
}
