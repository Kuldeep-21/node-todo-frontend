FROM node

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean

RUN mkdir /app
WORKDIR /app

COPY package.json /app/


COPY src /app/src

EXPOSE 3000

CMD [ "npm", "start" ]

