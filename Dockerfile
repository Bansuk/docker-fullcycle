FROM golang:latest as builder

COPY main.go .

RUN go build main.go

FROM scratch

COPY --from=builder /go/main .

CMD ["./main"]

