<?php
$I = new AcceptanceTester($scenario);
$I->wantTo('Create quizzes with specific languages');
$I->amOnPage('/dashboard');
$I->seeCurrentUrlEquals('/login');
$I->fillField('email', 'john.doe@gmail.com');
$I->fillField('password', 'secret');
$I->click('Sign in');
$I->seeCurrentUrlEquals('/dashboard');
$I->see('Create new...','button');
$I->click('Create new...');
$I->seeCurrentUrlEquals('/quizzes/create');
$I->dontSeeInDatabase('languages',[
    'language'=>'spanish'
]);
$I->click("Add new language");
$I->seeCurrentUrlEquals('/languages/create');
$I->fillField('language', 'spanish');
$I->click("Add new language");
$I->seeInDatabase('languages', [
    'language' => 'spanish',
]);
$I->seeCurrentUrlEquals('/quizzes/create');
$I->selectOption('form select[name=language]', 'Spanish');
$I->click('Select language');
$I->seeCurrentUrlEquals('/quizzes/1/questions');
$I->selectOption('form select[name=question_type]', 'Word translation');
$I->click('Add new question');
//$I->seeCurrentUrlEquals('/quizzes/1/questions/create?_token=RSg4xmZW4OPgfLXx3LivZ2SCnTrzRH5LXAGxpO8d&question_type=1');
$language=$id = $I->grabFromDatabase('languages', 'language', [
    'language' => 'spanish'
]);
$I->fillField('Word in '.$language, 'Hola');
$I->fillField('Answer in English', 'hello');
$I->click('Add new question');
$I->seeInDatabase('questions',[
  'id'=>1,
    'answer'=>'hello',
    'in_english'=>'Hola',
    'type'=>1
]);
$I->seeCurrentUrlEquals('/quizzes/1/questions');
$I->selectOption('form select[name=question_type]', 'Sentence translation');
$I->click('Add new question');
$I->fillField('Sentence in '.$language, 'ABC ABC ABC');
$I->fillField('Answer in English', 'ABC ABD ABD');
$I->click('Add new question');
$I->seeInDatabase('questions',[
    'id'=>2,
    'answer'=>'ABC ABD ABD',
    'in_english'=>'ABC ABC ABC',
    'type'=>2
]);
$I->seeCurrentUrlEquals('/quizzes/1/questions');
$I->selectOption('form select[name=question_type]', 'Multiple choice');
$I->click('Add new question');
$I->fillField('Task content in '.$language, 'ABC');
$I->fillField('answer A', 'A');
$I->fillField('answer B', 'B');
$I->fillField('answer C', 'C');
$I->fillField('answer D', 'D');
$I->selectOption('form select[name=answer]', 'Answer A');
$I->click('Add new question');
$I->seeInDatabase('questions',[
    'id'=>3,
    'answer'=>'A',
    'in_english'=>'ABC',
    'type'=>3
]);
$I->seeCurrentUrlEquals('/quizzes/1/questions');
$I->see('Edit','button');
$I->see('Delete','button');
$I->click('Edit');
$I->fillField('Word in: '.$language, 'abc');
$I->fillField('Answer in English', 'cba');
$I->click('Save changes...');
$I->seeInDatabase('questions',[
    'id'=>1,
    'answer'=>'cba',
    'in_english'=>'abc',
    'type'=>1
]);
$I->click('Delete');
$I->dontSeeInDatabase('questions',[
    'id'=>1,
    'answer'=>'cba',
    'in_english'=>'abc',
    'type'=>1
]);
