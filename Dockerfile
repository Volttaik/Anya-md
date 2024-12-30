FROM node:lts-buster

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/PikaBotz/Anya_v2-MD anya-v2

WORKDIR /anya-v2

RUN npm install

CMD ["npm", "start"]
