### Build container image in the current directory
```shell
docker build -t getting-started .
```

### Start an app container in the background on port 3000 which mapped to host 3000
```shell
docker run -dp 3000:3000 getting-started
```

### Show running containers
```shell
docker ps
```

### Stop a container
```shell
docker stop <the-container-id>
```

### Remove a container
```shell
docker rm <the-container-id>
```

### Push docker to docker hub
```shell
docker push USERNAME/getting-started
```

### Start ubuntu container that will create a file named /data.txt with a random number between 1 and 10000
```shell
docker run -d ubuntu bash -c "shuf -i 1-10000 -n 1 -o /data.txt && tail -f /dev/null"
```

### Execute command inside a container
```shell
docker exec <container-id> cat /data.txt
```

### Run another ubuntu container with different command
```shell
docker run -it ubuntu ls /
```

### Force remove a running container
```shell
docker rm -f <container-id>
```

### Create a volume to persist data
```shell
docker volume create todo-db
```

### Start a todo app container but with -v flag to specify a volume mount.
```shell
docker run -dp 3000:3000 -v todo-db:/etc/todos getting-started
```

### Show running containers
```shell
docker ps
```

### Dive into the volume
```shell
docker volume inspect todo-db
```

### Run a single line container
```shell
docker run -dp 3000:3000 \
	-w /app -v "$(pwd):/app" \
	node:18-alpine \
	sh -c "yarn install && yarn run dev"
```

### Watch logs inside a container
```shell
docker logs -f <container-id>
```

### Create a network
```shell
docker network create todo-app
```

### Start a container and attach a network
```shell
docker run -d \
	--network todo-app --network-alias mysql \
	-v todo-mysql-data:/var/lib/mysql \
	-e MYSQL_ROOT_PASSWORD=secret \
	-e MYSQL_DATABASE=todos \
	mysql:8.0
```

### Get inside the mysql container using exec
```shell
docker exec -it <mysql-container-id> mysql -u root -p
```

### Using nicolaka/netshoot to check IP
```shell
docker run -it --network todo-app nicolaka/netshoot
```

### Inside netshoot, run dig command which is a DNS tool
```shell
dig mysql
```

### For mysql 8.0 or higher
```shell
mysql> ALTER USER 'root' IDENTIFIED WITH mysql_native_password BY 'secret';
mysql> flush privileges;
```

### Run app with specified environtment vars
```shell
docker run -dp 3000:3000 \
	-w /app -v "$(pwd):/app" \
	--network todo-app \
	-e MYSQL_HOST=mysql \
	-e MYSQL_PASSWORD=secret \
	-e MYSQL_USER=root \
	-e MYSQL_DB=todos \
	node:18-alpine \
	sh -c "yarn install && yarn run dev"
```

### Connect to mysql container inside database todos
```shell
docker exec -it <mysql-container-id> mysql -p todos
```

### Check docker compose version
```shell
docker compose version
```

### Run docker compose in the background
```shell
docker compose up -d
```

### Scan for security concern
```shell
docker scan getting-started
```

### See history for geting-started image
```shell
docker image history getting-started
```
