docker service create \
--name portainer \
--publish 9000:9000 \
--replicas=1 \
--constraint 'node.role == manager' \
--mount type=bind,src=//var/run/docker.sock,dst=/var/run/docker.sock \
--mount type=bind,src=//gfs_mount/portainer/,dst=/data \
-l traefik.enable=true \
-l traefik.frontend.passHostHeader=true \
-l traefik.frontend.rule="Host:portainer.vlekh.net, http://portainer.vlekh.net" \
-l traefik.backend=portainer \
-l traefik.docker.network=traefik \
-l traefik.entryPoint=https \
-l traefik.port=9000 \
--network traefik \
portainer/portainer 


# when using local certs
#--ssl --sslcert /data/certs/portainer.crt --sslkey /data/certs/portainer.key \
