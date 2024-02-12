run:
	php artisan serve

setup:
	composer install
	cp .env.example .env
	php artisan key:generate
	php artisan storage:link

setup-db:
	php artisan migrate
	php artisan db:seed --class=UserSeeder
	php artisan db:seed --class=ConfigSeeder
    php artisan db:seed --class=ClassificationSeeder
    php artisan db:seed --class=LetterStatusSeeder

setup-dummy:
	php artisan migrate --seed
