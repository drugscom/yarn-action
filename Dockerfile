FROM docker.io/library/alpine:3.14.3

LABEL 'com.github.actions.name'='Yarn'
LABEL 'com.github.actions.description'='Run yarn package manager'

RUN apk --no-cache add \
    git=~2 \
    yarn=~1

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

WORKDIR /app
