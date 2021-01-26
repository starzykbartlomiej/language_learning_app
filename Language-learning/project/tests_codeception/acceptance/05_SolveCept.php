<?php
$I = new AcceptanceTester($scenario);
$I->haveInDatabase('languages',[
    'language'=>'spanish',
]);
$I->haveInDatabase('quizzes',[
    'user_id'=>1,
    'language_id'=>1,
]);
$I->haveInDatabase('questions',[
    'quiz_id'=>1,
    'answer'=>'hello',
    'in_english'=>'Hola',
    'is_correct'=>true,
    'type'=>1
]);
$I->haveInDatabase('questions',[
    'quiz_id'=>1,
    'answer'=>'hello Jacob',
    'in_english'=>'Hola Jacob',
    'is_correct'=>true,
    'type'=>2
]);
$I->wantTo('Create quizzes with specific languages');
$I->amOnPage('/dashboard');
$I->seeCurrentUrlEquals('/login');
$I->fillField('email', 'alfons@gmail.com');
$I->fillField('password', 'pimp');
$I->click('Sign in');
$I->seeCurrentUrlEquals('/dashboard');
$I->dontSee('Admin');
$I->dontSee('Expert');
$I->amOnPage('/quizzes');
$I->seeCurrentUrlEquals('/quizzes');
$I->see('Creator');
$I->see('Language');
$I->see('John Doe');
$I->see('Solve');
$I->click('Solve');
$I->seeCurrentUrlEquals('/quizzes/1/solutions/create');
$I->see('Translate word to Spanish');
$I->see('Translate sentence to Spanish');
$I->fillField('Translate sentence to Spanish','hello Jacob');
$I->fillField('Translate word to Spanish','h');
$I->click('Sumbit answers to the quiz');
$I->seeInDatabase('solutions',[
    'question_id'=>1
]);
$I->seeCurrentUrlEquals('/quizzes/1/solutions');
$I->see('Quiz nr 1 results.');

