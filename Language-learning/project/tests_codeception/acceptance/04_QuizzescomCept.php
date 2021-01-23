<?php
$I = new AcceptanceTester($scenario);
$I->wantTo('Create quizzes with specific languages');
$I->amOnPage('/dashboard');
$I->seeCurrentUrlEquals('/login');
$I->fillField('email', 'john.doe@gmail.com');
$I->fillField('password', 'secret');
$I->click('Sign in');
$I->seeCurrentUrlEquals('/dashboard');
$I->click('Discuss');
$I->seeCurrentUrlEquals('/quizzes/1/comments');
$I->see('Edit','button');
$I->see('Delete','button');
$I->see('Add new comment','button');
$I->see('Go to discussion','button');
$I->seeInDatabase('comments',[
    'user_id'=>1,
    'quiz_id'=>1
]);
$I->click('Delete');
$I->seeCurrentUrlEquals('/quizzes/1/comments');
$I->dontSee('Edit','button');
$I->dontSee('Delete','button');
$I->see('Add new comment','button');
$I->see('Go to discussion','button');
$I->dontSeeInDatabase('comments',[
    'user_id'=>1,
    'quiz_id'=>1
]);


