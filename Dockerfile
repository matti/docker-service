FROM alpine:3.10
ENV PORT=80

RUN apk add --no-cache \
  socat \
  bash curl

WORKDIR /app
COPY app .

ENTRYPOINT ["/app/entrypoint.sh"]
