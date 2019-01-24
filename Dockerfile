FROM node:6-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY ./package.json /usr/src/app/package.json
COPY ./package-lock.json /usr/src/app/package-lock.json
RUN npm install --silent
COPY . /usr/src/app
RUN npm run build
CMD ["npm", "start"]
