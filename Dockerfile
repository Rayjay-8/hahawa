FROM ghcr.io/waha-api/whatsapp-http-api:latest

ENV WAHA_BACKEND=GOCR \
    WAHA_SERVER_PORT=10000

EXPOSE 10000

CMD ["node", "server.js"]
