node("docker-test") {
  checkout scm

  stage("Deploy Monitor Stack") {
    sh 'mkdir -p /gfs_mount/portainer/'
    sh 'docker stack deploy --compose-file docker_compose.yml portainer'
  }
}
