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
$I->click('Add new comment');
$I->seeCurrentUrlEquals('/quizzes/1/comments/create');
$I->fillField('title', 'abc');
$I->fillField('text', 'abc');
$I->click('Create');
$I->seeCurrentUrlEquals('/quizzes/1/comments');
$I->SeeInDatabase('comments',[
    'user_id'=>1,
    'quiz_id'=>1,
    'title'=>'abc',
    'text'=>'abc'
]);
$I->see('Edit','button');
$I->see('Delete','button');
$I->click('Edit');
$I->seeCurrentUrlEquals('/quizzes/1/comments/6/edit');
$I->fillField('title', 'abcd');
$I->fillField('text', 'abcd');
$I->click('Edit');
$I->SeeInDatabase('comments',[
    'user_id'=>1,
    'quiz_id'=>1,
    'title'=>'abcd',
    'text'=>'abcd'
]);
$I->seeCurrentUrlEquals('/quizzes/1/comments');
$I->see('Edit','button');
$I->see('Delete','button');
$I->click('Go to discussion');
$I->seeCurrentUrlEquals('/comments/2/subcomments');
$I->see('Go back','button');
$I->see('Add answer','button');
$I->seeNumRecords(0, 'subcomments');
$I->click('Add answer');
$I->seeCurrentUrlEquals('/comments/2/subcomments/create');
$I->fillField('title', 'abc');
$I->fillField('text', 'abc');
$I->click('Create');
$I->seeCurrentUrlEquals('/comments/2/subcomments');
$I->seeNumRecords(1, 'subcomments');
$I->seeInDatabase('subcomments',[
    'title'=>'abc',
    'text'=>'abc'
]);
$I->see('Edit','button');
$I->see('Delete','button');
$I->click('Edit');
$I->seeCurrentUrlEquals('/comments/2/subcomments/1/edit');
$I->fillField('title', 'abcd');
$I->fillField('text', 'abcd');
$I->click('Edit');
$I->seeCurrentUrlEquals('/comments/2/subcomments');
$I->seeNumRecords(1, 'subcomments');
$I->seeInDatabase('subcomments',[
    'title'=>'abcd',
    'text'=>'abcd'
]);
$I->click('Delete');
$I->seeNumRecords(0, 'subcomments');
$I->dontSeeInDatabase('subcomments',[
    'title'=>'abcd',
    'text'=>'abcd'
]);
$I->click('Go back');
$I->seeCurrentUrlEquals('/quizzes');

