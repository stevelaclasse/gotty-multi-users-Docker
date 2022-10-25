FROM golang:1.19-alpine

ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GO111MODULE=on

RUN mkdir /app && apk add --update --no-cache git make

COPY . /go/gotty
WORKDIR /go/gotty

RUN make && mv gotty /app/ && /app/gotty -v

WORKDIR /app
RUN rm -r /go/gotty
  
ENTRYPOINT ["/app/gotty"]
CMD ["--permit-write" "--reconnect" "/bin/sh"]
  
  