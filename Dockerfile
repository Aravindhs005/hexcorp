# Use a Node.js base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project directory into the container
COPY . .

# Expose the port your app runs on (default 3000 for Node.js)
EXPOSE 3000

# Command to start the server
CMD ["node", "server.js"]
