type
source
destination
readonly

docker container create --name mongovol --publish 27019:27017 --mount "type=volume,source=mongovolume,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=fahmi --env MONGO_INITDB_ROOT_PASSWORD=1234 mongo:latest