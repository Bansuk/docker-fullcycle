FROM golang:latest AS builder

COPY main.go .

RUN go build -ldflags="-s -w" main.go

FROM scratch

COPY --from=builder /go/main .

CMD ["./main"]

