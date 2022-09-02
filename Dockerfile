FROM node:16.13.2-alpine

# set working directory
WORKDIR /app

# install app dependencies
COPY package.json ./
COPY package-lock.json ./

RUN npm install
RUN npm install react-scripts@5.0.1 -g

COPY . .

EXPOSE 3000
# required for docker desktop port mapping

CMD ["npm", "start"]