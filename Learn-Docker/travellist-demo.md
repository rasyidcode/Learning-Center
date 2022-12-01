### Download project with curl
```shell
cd ~
curl -L https://github.com/do-community/travellist-laravel-demo/archive/tutorial-1.0.1.zip -o travellist.zip
```

### Build docker compose
```shell
docker compose build app
```

### Run docker compose in the background
```shell
docker compose up -d
```

### Show running containers
```shell
docker compose ps
```

### Execute some commands in the app containers
```shell
docker compose exec app ls -l
docker compose exec app rm -rf vendor composer.lock
docker compose exec app composer install
docker compose exec app php artisan key:generate
```

### Showing logs in nginx container
```shell
docker compose logs nginx
```

### Pause all containers
```shell
docker compose pause
```

### Unpause all containers
```shell
docker compose unpause
```

### Stop all containers
```shell
docker compose down
```
