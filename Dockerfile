FROM node:13-alpine

RUN mkdir -p /home/app

COPY ./app /home/app/src

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app/src

# will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]

