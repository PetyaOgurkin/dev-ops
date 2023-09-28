docker run \
    --name jenkins \
    --restart unless-stopped \
    --privileged \
    --user root \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /usr/bin/docker:/usr/bin/docker \
    -v /home/GIT_NAME:/var/git \
    -v jenkins_home:/var/jenkins_home \
    -v www_html:/var/www/html \
    -p 8080:8080 \
    -p 50000:50000 \
    --env JAVA_OPTS="-Dhudson.plugins.git.GitSCM.ALLOW_LOCAL_CHECKOUT=true" \
    --network app \
    -d \
    jenkins/jenkins:lts