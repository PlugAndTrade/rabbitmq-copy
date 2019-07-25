#!/bin/sh

rabbitmqadmin -H $RABBIT_SOURCE_HOST -u $RABBIT_SOURCE_USER -p $RABBIT_SOURCE_PASSWORD export /tmp/rabbit_config.json
rabbitmqadmin -H $RABBIT_TARGET_HOST -u $RABBIT_TARGET_USER -p $RABBIT_TARGET_PASSWORD import /tmp/rabbit_config.json