FROM node:argon

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get -y install mongodb
CMD ["/usr/bin/mongod", "--config", "/etc/mongodb.conf"] 

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

ENV APP_ID myAppId
ENV MASTER_KEY mySecretMasterKey
ENV FILE_KEY optionalFileKey
ENV USER_NAME user
ENV PASSWORD pass
ENV SERVER_URL http://localhost:8080

RUN bash install_dashboard.sh $USER_NAME $PASSWORD $APP_ID $MASTER_KEY $SERVER_URL

EXPOSE 8080 27017 4040

CMD [ "npm", "start" ]
CMD [ "sh", "start_dashboard.sh" ]


