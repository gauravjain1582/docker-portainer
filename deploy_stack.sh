# deploy stack portainer
mkdir -p /gfs_mount/portainer/
docker stack deploy --compose-file docker_compose.yml portainer
