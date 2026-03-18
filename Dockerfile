# Use Node base image
FROM node:18

# Create app directory
WORKDIR /app

# Copy files
COPY app/package*.json ./
RUN npm install

COPY app/ .

# Expose port
EXPOSE 3000

# Run app
CMD ["npm", "start"]
