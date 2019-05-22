FROM node:8

EXPOSE 8080
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install --only=production
# If you are building your code for production
# RUN npm install --only=production

ENV HOST 0.0.0.0
ENV PORT 8080

# Bundle app source
COPY . .

CMD [ "npm", "start" ]
