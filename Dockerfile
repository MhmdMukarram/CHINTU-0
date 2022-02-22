FROM fusuf/whatsasena:latest

RUN git clone https://github.com/MhmdMukarram/CHINTU /root/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
RUN git clone https://github.com/MhmdMukarram/CHINTU-0
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
