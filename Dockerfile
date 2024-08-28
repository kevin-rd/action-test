FROM golang:1.22.4-bullseye AS build-env

WORKDIR /go/src/github.com/zkmelabs

COPY . .

RUN echo "compile completed"

FROM golang:1.22.4-bullseye

RUN apt-get update -y
RUN apt-get install ca-certificates jq -y

WORKDIR /root

CMD ["echo run"]
