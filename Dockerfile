FROM node:alpine

ENV CHROME_BIN=/usr/bin/chromium-browser

RUN apk add git chromium chromium-chromedriver
