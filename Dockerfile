# Dockerfile
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install && npm list
RUN npm install express
# Copy application code
COPY . .

# Expose the application port
EXPOSE 3000

ENV NODE_ENV=production

# Command to run the app
CMD ["npm", "start"]
