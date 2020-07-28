FROM python:3-alpine
WORKDIR /app
ARG BUILD_DEPS=" \
    build-dependencies \
    build-base \
"
RUN apk add --no-cache --virtual $BUILD_DEPS \
    && pip install --no-cache-dir black \
    && apk del --no-network $BUILD_DEPS sqlite
ENTRYPOINT ["/usr/local/bin/black"]
CMD []
