<?php
$I = new AcceptanceTester($scenario);
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

