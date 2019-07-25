#!/bin/sh

rabbitmqadmin -H $RABBIT_SOURCE_HOST -u ${RABBIT_SOURCE_USER:-guest} -p ${RABBIT_SOURCE_PASSWORD:-guest} export /tmp/rabbit_config.json
rabbitmqadmin -H $RABBIT_TARGET_HOST -u ${RABBIT_TARGET_USER:-guest} -p ${RABBIT_TARGET_PASSWORD:-guest} import /tmp/rabbit_config.json