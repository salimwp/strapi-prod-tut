FROM node:16

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /app

COPY package.json /app
COPY yarn.lock /app

RUN yarn install

COPY . .

EXPOSE 1337
RUN chown node.node -R /app
USER node
CMD ["yarn","start"]