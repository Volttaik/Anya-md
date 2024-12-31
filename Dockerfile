FROM node:lts-buster

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/PikaBotz/Anya_v2-MD anya-v2

WORKDIR /anya-v2

RUN npm install

# Set environment variables
ENV BotName=""
ENV Footer="© Queen Anya Bot"
ENV Prefix="/"
ENV ThemeEmoji="🎐"
ENV Owner_Name="Pika~Kun"
ENV Owner_Number="2348061938576"
ENV Insta="3.69_pika"
ENV Author="PikaBotz"
ENV PackName="Queen Anya • Stickers"
ENV Web="https://github.com/PikaBotz"
ENV GcLink="https://chat.whatsapp.com/E490r0wSpSr89XkCWeGtnX"
ENV Warn_Limits="3"
ENV Cooldown_Timer_Seconds="5"
ENV Port="8080"
ENV MongoDB="mongodb+srv://Dev:liquid4@cluster0.moflf.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"
ENV SESSION_ID="3s05JrXah_A_N_Y_A_V_2_c33QdnnnXgj"

CMD ["npm", "start"]
