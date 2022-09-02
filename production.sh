#!/bin/bash 
rm -rf docker_python_jenkins
git clone https://github.com/vyasg84/docker_python_jenkins.git
docker image rmi  vyasg84/jenkins-python-demo:1.0
docker pull vyasg84/jenkins-python-demo:1.0
docker run -it -d --name docker_python_jenkins vyasg84/jenkins-python-demo:1.0 bash
