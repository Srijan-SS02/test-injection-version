# Use the official Node.js image as the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Define the build argument
ARG RELEASE_VERSION

# Set the environment variable
ENV RELEASE_VERSION=${RELEASE_VERSION}

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
