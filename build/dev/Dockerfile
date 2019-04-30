# build stage
FROM node:8

WORKDIR /opt/app
RUN mkdir -p /opt/app/public/
RUN mkdir -p /opt/app/src/
RUN mkdir -p /opt/app/tests/
RUN mkdir -p /opt/app/dist/

COPY ./package.json /opt/app/package.json
COPY ./package-lock.json /opt/app/package-lock.json
RUN npm install

COPY ./public/ /opt/app/public/
COPY ./src/ /opt/app/src/
COPY ./tests/ /opt/app/tests/
COPY ./babel.config.js /opt/app/babel.config.js
COPY ./jest.config.js /opt/app/jest.config.js
COPY ./vue.config.js /opt/app/vue.config.js

EXPOSE 8080

CMD ["npm", "run", "serve"]

