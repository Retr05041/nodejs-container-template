# Base image - Node v16
FROM node:16

# Our working directory - inside the image
WORKDIR /app

# Copy our dependancies in - we do this BEFORE our src code
COPY package*.json ./

# Install all the dependencies - Shell form
RUN npm install

# Copy all our files
COPY . .

# Tells docker to show this port to the outside world 
EXPOSE 5000

# Run this command to start the app inside the container - Exec form (doesnt start up a shell session)
CMD ["node", "index.js"]