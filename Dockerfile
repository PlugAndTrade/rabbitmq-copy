FROM activatedgeek/rabbitmqadmin

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]