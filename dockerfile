# Use an official lightweight Node.js image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json BEFORE running npm install
COPY package*.json ./

# Verify if package.json was copied (optional)
RUN ls -l

# Install dependencies
RUN npm install --only=production

# Copy the rest of the application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
