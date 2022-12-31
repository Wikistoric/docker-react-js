FROM node:18-alpine
EXPOSE 3000
RUN mkdir /node
WORKDIR /node
RUN npm install -g npm@latest && npm install -g react && npm install -g create-react-app && npx create-react-app .
RUN mkdir /app
WORKDIR /app
ADD docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD [ "npm", "start" ]
