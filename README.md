# RabbitMQ copy
Export configuration from one RabbitMQ cluster - and import it into another.

## Build Docker image
```
docker build -t rabbitmq-copy .
```

## Running Docker image

### RabbitMQ in local Docker container
```
docker run -it --rm \
  --link <local-rabbitmq-docker-container>:rabbitmq \
  -e RABBIT_SOURCE_HOST=<hostname-for-source-cluster> \
  -e RABBIT_SOURCE_USER=<username-for-source-cluster> \
  -e RABBIT_SOURCE_PASSWORD=<password-for-source-cluster> \
  -e RABBIT_TARGET_HOST=rabbitmq \
  -e RABBIT_TARGET_USER=<username-for-local-cluster> \
  -e RABBIT_TARGET_PASSWORD=<password-for-local-cluster> \
  rabbitmq-copy
```

### External RabbitMQ
```
docker run -it --rm \
  -e RABBIT_SOURCE_HOST=<hostname-for-source-cluster> \
  -e RABBIT_SOURCE_USER=<username-for-source-cluster> \
  -e RABBIT_SOURCE_PASSWORD=<password-for-source-cluster> \
  -e RABBIT_TARGET_HOST=<hostname-for-target-cluster> \
  -e RABBIT_TARGET_USER=<username-for-target-cluster> \
  -e RABBIT_TARGET_PASSWORD=<password-for-target-cluster> \
  rabbitmq-copy
```

### Environment variables
- RABBIT_SOURCE_HOST (mandatory)
- RABBIT_SOURCE_USER (optional, defaults to "guest")
- RABBIT_SOURCE_PASSWORD (optional, defaults to "guest")
- RABBIT_TARGET_HOST (mandatory)
- RABBIT_TARGET_USER (optional, defaults to "guest")
- RABBIT_TARGET_PASSWORD (optional, defaults to "guest")