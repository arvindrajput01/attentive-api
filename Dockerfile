FROM ruby:3.1.0

# working direcotry
RUN mkdir /app
WORKDIR /app

COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT [ "/app/docker-entrypoint.sh" ]
