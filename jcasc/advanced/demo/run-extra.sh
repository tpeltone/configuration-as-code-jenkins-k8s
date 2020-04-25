#!/bin/sh

docker run \
    -p 8080:8080 \
    -v $PWD/jenkins-extra.yaml:/var/jenkins_home/casc_configs/jenkins.yaml \
    -e JENKINS_GITHUB_SSH="$(cat ../../../resources/github_id_rsa)" \
    -e JENKINS_AUTH_JSON="$(cat ../../../resources/auth.json)" \
    tpeltone/jcasc-job:2.222.3-1.39
