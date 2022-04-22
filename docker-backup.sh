docker container create --name nginxbackup --mount "type=bind,source=/f/Projects/docker/docker-basic/backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" nginx:latest

tar cvf /backup/backup.tar.gz /data

# Backup with run

docker container run --rm --name ubuntu --mount "type=bind,source=/f/Projects/docker/docker-basic/backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" ubuntu:latest tar cvf /backup/backup.tar.gz /data