FROM node:16.13.2-bullseye

RUN apt-get --quiet update && \
    apt-get --quiet install --assume-yes --no-install-recommends \
    make \
    gcc \
    python3 && \
    apt-get clean

RUN yarn global add @vue/cli

RUN npm root
