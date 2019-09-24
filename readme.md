# Fantasy Football Playoff Survivor

some cool stuff incoming...

## Dev Setup

First time setup of the repository. Make sure you're in the root directory of the project.

### Install dependencies

We need to install composer dependencies first. If you have composer installed:

```
composer install
```

if not, you can use an ephemeral docker container:

```
docker run --rm -v $(pwd):/app composer/composer:latest install
```

### Generate an application key and run db migrations with Artisan

If you have php locally installed on your laptop:

```
php artisan key:generate
```

```
php artisan make:migrations
```

if not, you can use an ephemeral docker container for these tasks as well:

```
put php docker command here
```

```
put php docker command here
```

### Initialize Dev Environment

```
./dev/init.sh
```

## Dev Maintenance

add tooling to automate the operational junk
