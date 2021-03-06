# Project description
This is the language platform project.  
It was fully developed by four students from Cracow, with the use of **PHP Laravel Framework**.  
The page gives few possibilities to get better in choosen language.  
For example:  
**1. You can create multiple types of quizess**  
**2. Add new languages**  
**3. Achieve expert badges**  
**4. And more yet to come...**  

# Getting started
## Configuration
Please check the official laravel installation guide for server requirements before you start. [Official Documentation](https://laravel.com/docs/5.4/installation#installation "Official Documentation").  
Alternative installation is possible without local dependencies relying on [Docker](https://www.docker.com/ "Docker").

## To start working with page you must execute the following steps:  

* Clone the repository:  

```
git clone https://bitbucket.org/starzyk_bartlomiej/php_2020_platforma_do_nauki_jezykow/src/master/ 
```   
* Start database:  
```
docker run --name=mysql --net=host --rm --env MYSQL_ROOT_PASSWORD=root123 --env MYSQL_DATABASE=test --env MYSQL_USER=test --env MYSQL_PASSWORD=test123 -d mysql/mysql-server:8.0
```
* Connect with host:  
```
while ! timeout 1 bash -c "echo > /dev/tcp/localhost/3306" 2> /dev/null; do sleep 1; done; echo "Done.";
```
* Go to project directory:  
```
cd project  
```
* Install composer:  
```
composer install
```
* Replace .env file:  
```
cp .env.example .env
```

* Generate artisan key:  
```
php artisan key:generate
```
* Refresh migration:  
```
php artisan migrate:fresh
```
* Add seed:  
```
php artisan db:seed
```
* Create dump.sql to tests:  
```
docker exec mysql mysqldump -u root --password=root123 test > tests_codeception/_data/dump.sql
```
*  Execute unit tests:  
```
vendor/bin/phpunit
```
*  Start Server:  
```python
import subprocess
artisanServe = subprocess.Popen(['php', 'artisan', 'serve', '--port', '8888'])
```
* Run codeception tests:  
```
vendor/bin/codecept run
```
## Cleaning procceses:  
* Stop server:
```
killall php php7.4
```
* Go to previous directory:
```
cd ..
```
* Stop database:
```
docker container stop mysql
```


# Database scheme
![](php_database_lang_platform.svg)
# Code overview  
## Folders:
* *app - Contains all the Eloquent models*
* *app/Http/Controllers/Api - Contains all the api controllers*
* *app/Http/Middleware - Contains the JWT auth middleware*
* *app/Http/Requests/Api - Contains all the api form requests*
* *config - Contains all the application configuration files*
* *database/factories - Contains the model factory for all the models*
* *database/migrations - Contains all the database migrations*
* *database/seeds - Contains the database seeder*
* *routes - Contains all the routes*
* *tests - Contains vendor tests*
* *tests/tests_codeception/acceptance - Contains all the codeception tests*
  
## Environment variables:
```
.env
```
 - Environment variables can be set in this file
Note : You can quickly set the database information and other variables in this file and have the application fully working.
