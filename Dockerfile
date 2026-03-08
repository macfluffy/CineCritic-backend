# For speed optimization purposes, we'll do a clean 
# install of the dependencies first, then copy over 
# the remaining files

# Current stable version of Node: v24.11.1
FROM node:24

# Set the working directory to /app
WORKDIR /app

# Copy the list of dependencies into /app
COPY package*.json ./

# Perform a clean install of all our dependencies.
RUN npm ci

# Copy the remaining files
COPY . .

# Start the server
CMD ["npm", "start"]