FROM alpine:3.10

LABEL "maintainer"="Jérémy Derussé <jeremy@derusse.com>"
LABEL "repository"="http://github.com/jderusse/ga-scp"

LABEL "com.github.actions.name"="SCP Transfer Files"
LABEL "com.github.actions.description"="Transfer Files to remote ussing scp."
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="orange"

RUN apk add --no-cache \
        openssh-client

ADD entrypoint /entrypoint
ENTRYPOINT ["/entrypoint"]
