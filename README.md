# docker-compose-minecraft-bedrock-server

## Usage

### initial

```
1.
  $ git clone git@github.com:u7chan/docker-compose-minecraft-bedrock-server

2.
  $ cd docker-compose-minecraft-bedrock-server

3.
  $ docker-compose up --build -d
```

### start/stop

```
start.
  $ docker start <container>

stop.
  $ docker stop <container>
```

### backup

```
1. Connect to container
  $ docker exec -it <container> /bin/sh

2. Run the backup script.
  $ sh backup.sh
```

The world data will be copied to `data/backup`.

### resotre

```
1. Change 'LEVEL_NAME' in docker-compose.yml to the same name as under 'data/restore/'.

2.
  $ docker-compose up -d
```
