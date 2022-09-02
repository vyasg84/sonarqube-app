#!/bin/bash 
echo "Removing existing directory"
rm -rf docker_python_jenkins
echo "Clone from GitHub"
git clone https://github.com/vyasg84/docker_python_jenkins.git
echo "removing image"
docker image rmi  vyasg84/jenkins-python-demo:1.0
echo "Pulling new image from DockerHub"
docker pull vyasg84/jenkins-python-demo:1.0
echo "Creating container on server"
docker run -it -d --name docker_python_jenkins vyasg84/jenkins-python-demo:1.0 bash
