FROM alpine:3.8

RUN apk add --no-cache curl ca-certificates && update-ca-certificates

RUN curl -o /usr/bin/jfrog https://bintray.com/jfrog/jfrog-cli-go/download_file?file_path=1.17.1%2Fjfrog-cli-linux-amd64%2Fjfrog

RUN chmod +x /usr/bin/jfrog

ENTRYPOINT /usr/bin/jfrog

