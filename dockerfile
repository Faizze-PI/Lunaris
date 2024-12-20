# Use an official Node.js image as a base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy your project files into the container
COPY ./index.html ./style.css ./script.js ./images/ ./

# Install http-server globally
RUN npm install -g http-server

# Copy the start.sh script into the container
COPY ./start.sh /usr/src/app/start.sh

# Make the script executable
RUN chmod +x /usr/src/app/start.sh

# Expose port 8080
EXPOSE 8080

# Command to run the script when the container starts
CMD ["/usr/src/app/start.sh"]
