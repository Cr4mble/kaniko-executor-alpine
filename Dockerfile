FROM gcr.io/kaniko-project/executor:v1.2.0 as kaniko

FROM alpine:3.12
RUN apk add --no-cache git
COPY --from=kaniko /kaniko/executor /usr/local/bin/executor
ENTRYPOINT ["executor"] 
