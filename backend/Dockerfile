# Use Node.js version 18
FROM node:18-alpine

# Create a folder inside the container for our code
WORKDIR /app

# Copy our server.js file into the container
COPY server.js .

# Tell Docker the app runs on port 5000
EXPOSE 5000

# The command to start our backend
CMD ["node", "server.js"]
