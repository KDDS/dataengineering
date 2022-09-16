sudo yum remove docker \
                  docker-client \
                  docker-client-latest \y
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

sudo yum install -y yum-utils

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo yum install docker-compose
sudo yum install git 
git clone https://github.com/apache/superset
cd superset
sudo service docker start
sudo docker compose -f docker-compose-non-dev.yml up -d

#http://localhost:8088