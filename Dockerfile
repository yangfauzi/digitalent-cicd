FROM golang:alpine AS builder

RUN mkdir /app
COPY . /app
WORKDIR /app
RUN make build

FROM alpine:latest
RUN mkdir /app
WORKDIR /app
COPY --from=builder /app/main /app/

CMD ["/app/main"]