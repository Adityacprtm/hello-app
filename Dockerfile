FROM alpine:3.15
WORKDIR /app
COPY hello-app .
EXPOSE 8080
CMD ["./hello-app"]
