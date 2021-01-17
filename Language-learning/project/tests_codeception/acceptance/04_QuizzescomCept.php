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
$I->click("Discusion");
$I->seeCurrentUrlEquals('/quizzes/1/comments');
$I->seeInDatabase('comments', [
    'title' => 'Dolor laboriosam ad in quia.',
    'text'=>'Voluptas eos provident quaerat ab. Inventore distinctio molestiae rerum iure molestiae eum et veritatis. Itaque laboriosam maiores est consequatur et et.',
    'quiz_id'=>1,
    'user_id'=>1
]);
$I->see('Edit','button');
$I->see('Delete','button');
$I->see('Add new comment');
$comment_id = $I->grabFromDatabase('comments', 'id', [
   'title' => 'Dolor laboriosam ad in quia.',
]);
$I->click("Edit");
$I->seeCurrentUrlEquals('/quizzes/1/comments/'.$comment_id.'/edit');
$I->fillField('title', 'abcd');
$I->fillField('text', 'abcd');
$I->click("Edit");
$I->dontSeeInDatabase('comments', [
    'title' => 'Dolor laboriosam ad in quia.',
    'text'=>'Voluptas eos provident quaerat ab. Inventore distinctio molestiae rerum iure molestiae eum et veritatis. Itaque laboriosam maiores est consequatur et et.',
    'quiz_id'=>1,
    'user_id'=>1
]);
$I->seeInDatabase('comments', [
    'title' => 'abcd',
    'text'=>'abcd',
    'quiz_id'=>1,
    'user_id'=>1
]);
$I->seeCurrentUrlEquals('/quizzes/1/comments');
$I->see('john.doe@gmail.com',"h1");
$I->see('Edit','button');
$I->see('Delete','button');
$I->see('Add new comment');
$I->click("Delete");
$I->seeCurrentUrlEquals('/quizzes/1/comments');
$I->dontSee('abcd john.doe@gmail.com',"h1");
$I->dontSee('Edit','button');
$I->dontSee('Delete','button');
$I->see('Add new comment');
$I->dontSeeInDatabase('comments', [
    'title' => 'abcd',
    'text'=>'abcd',
    'quiz_id'=>1,
    'user_id'=>1
]);
$I->click('Add new comment');
$I->seeCurrentUrlEquals('/quizzes/1/comments/create');
$I->see('Create','button');
$I->fillField('title', 'abcd');
$I->fillField('text', 'abcd');
$I->click('Create');
$I->seeInDatabase('comments', [
    'title' => 'abcd',
    'text'=>'abcd',
    'quiz_id'=>1,
    'user_id'=>1
]);
$I->seeCurrentUrlEquals('/quizzes/1/comments');
$I->see('abcd john.doe@gmail.com',"h1");
$I->see('abcd','td');
$I->see('Edit','button');
$I->see('Delete','button');
