# Use the official Node.js image as the base image
FROM node:latest 

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory
COPY . .

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./


# Install the application dependencies
RUN npm install

EXPOSE 3000/tcp

# Define the entry point for the container
#CMD ["npm", "start"]
CMD ["node", "server.js"]