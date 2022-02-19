FROM golang:1.17-alpine3.15
WORKDIR $GOPATH/src/hello-app
COPY . .
RUN go mod tidy && GOARCH=amd64 GOOS=linux go build

FROM alpine:3.15
WORKDIR /app
COPY --from=0 /go/src/hello-app/hello-app hello-app
EXPOSE 8080
CMD ["./hello-app"]
