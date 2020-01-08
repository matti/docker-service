# docker-service

socat wrapper image to make docker-compose containers like k8s services

    docker run -e PORT=80 -e TARGET=nginx:8080 mattipaksula/docker-service
