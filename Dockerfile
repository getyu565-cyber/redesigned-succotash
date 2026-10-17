# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Install wget
RUN apk add --no-cache wget

# Download the server.js script using wget
RUN wget https://raw.githubusercontent.com/getyu565-cyber/redesigned-succotash/refs/heads/main/server.js -O server.js

# Install required Node.js packages
RUN npm init -y && \
    npm install express jsonwebtoken

# Expose the default application port
EXPOSE 3000

# Run the server application
CMD ["node", "server.js"]
