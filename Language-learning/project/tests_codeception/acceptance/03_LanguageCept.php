<?php


$I = new AcceptanceTester($scenario);
$I->wantTo('Create quizzes with specific languages');
$I->amOnPage('/quizzes');
$I->seeCurrentUrlEquals('/login');
$I->fillField('email', 'john.doe@gmail.com');
$I->fillField('password', 'secret');
$I->click('Login');
$I->seeCurrentUrlEquals('/quizzes');
$I->see('List of Quizzes', 'h2');
$I->seeInDatabase('languages', [
    'language' => 'english',
]);
$I->click("Add new language");
$I->seeCurrentUrlEquals('/languages/create');
$I->dontSeeInDatabase('languages',[
    'language' => 'spanish'
]);
$I->click("Add new language");
$I->seeCurrentUrlEquals('/languages/create');
$I->fillField('language', 'spanish');
$I->click("Add new language");
$I->seeInDatabase('languages', [
    'language' => 'spanish',
]);
$I->seeCurrentUrlEquals('/quizzes');

