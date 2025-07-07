FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
<<<<<<< HEAD
RUN npm install --only=production
=======
RUN npm ci 
>>>>>>> 72f2dd443b6c058e898248994b3d38b9239cc918

COPY . .

EXPOSE 8000

USER node

CMD ["npm", "start"]
