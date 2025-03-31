FROM ghcr.io/waha-api/whatsapp-http-api:latest

ARG GHCR_USER
ARG GHCR_PAT

RUN echo $GHCR_PAT | docker login ghcr.io -u $GHCR_USER --password-stdin

ENV WAHA_BACKEND=GOCR \
    WAHA_SERVER_PORT=10000

EXPOSE 10000

CMD ["node", "server.js"]
