type
source
destination
readonly

docker container create --name mongobind --publish 27018:27017 --mount "type=bind,source=/f/Projects/docker/docker-basic/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=fahmi --env MONGO_INITDB_ROOT_PASSWORD=1234 mongo:latest