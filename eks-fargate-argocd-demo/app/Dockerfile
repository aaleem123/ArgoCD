FROM node:18-alpine
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install --omit=dev
COPY app.js ./
EXPOSE 3000
CMD ["npm", "start"]

