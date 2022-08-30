FROM golang:buster

WORKDIR /

COPY . .

WORKDIR /project
RUN go mod init sampleServer
RUN go get
CMD ["go", "run server.go"]
