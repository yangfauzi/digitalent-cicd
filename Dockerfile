FROM golang:alpine AS builder

WORKDIR /app
COPY . .
RUN go build -o /digitalent-cicd

FROM alpine:latest
COPY --from=builder /digitalent-cicd /digitalent-cicd

CMD ["/digitalent-cicd"]