FROM node:12-alpine

ADD /app .
ADD package.json /app

RUN cd /app; npm install --save react react-dom react-scripts

ENV NODE_ENV production
ENV PORT 8080
EXPOSE 8080

WORKDIR "/app"
CMD [ "npm", "start" ]