FROM node:20

WORKDIR /app

COPY package.json package.json
COPY yarn.lock yarn.lock

RUN npm install

COPY . .

RUN npm build

CMD ["npm", "start"]