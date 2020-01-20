# docker-service

socat wrapper image to make docker-compose containers like k8s services

    docker run -e PORTS=80:nginx:8080 mattipaksula/docker-service
    docker run -e PORTS="80:nginx:8080 90:apache:8080" mattipaksula/docker-service
