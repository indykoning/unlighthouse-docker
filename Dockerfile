FROM alpine
MAINTAINER IndyKoning

RUN apk add --no-cache \
      chromium \
      nss \
      freetype \
      harfbuzz \
      ca-certificates \
      ttf-freefont

RUN apk add nodejs npm yarn; \
    npm install -g unlighthouse

EXPOSE 5678

# Tell Puppeteer to skip installing Chrome. We'll be using the installed package.
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
ENV SITE="http://localhost"

RUN chown root:root /usr/lib/chromium/chrome-sandbox && \
    chmod 4755 /usr/lib/chromium/chrome-sandbox

# Add user so we don't need --no-sandbox.
RUN addgroup -S unlighthouse && adduser -S -G unlighthouse unlighthouse \
    && mkdir -p /home/unlighthouse/Downloads /app \
    && chown -R unlighthouse:unlighthouse /home/unlighthouse \
    && chown -R unlighthouse:unlighthouse /app

# Run everything after as non-privileged user.
USER unlighthouse
WORKDIR /home/unlighthouse

ADD unlighthouse.config.ts unlighthouse.config.ts 

ENTRYPOINT npx unlighthouse --site ${SITE}
