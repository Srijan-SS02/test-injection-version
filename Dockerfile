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
ARG VERSION
ARG BRANCH_NAME

# Set the environment variable
ENV VERSION=${VERSION}
ENV BRANCH_NAME=${BRANCH_NAME}

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
