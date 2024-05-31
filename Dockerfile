 FROM node:16

 #create app directory
 WORKDIR /usr/src/app
# Copy package.json and package-lock.json files
 COPY package*.json ./
# Install the dependencies
 RUN npm install

# Copy the rest of the application code
 COPY . .
# Expose the port the app runs on
EXPOSE 8080
# Command to run the application
CMD["node", "server.js"]
