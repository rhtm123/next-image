FROM bitnami/node:16.17.0-debian-11-r6
WORKDIR /app
COPY package.json .
RUN npm i
COPY . .
EXPOSE 80
CMD ["npm", "run", "dev"]