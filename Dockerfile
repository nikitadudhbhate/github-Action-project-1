# 1. Used an official Node.js runtime as the base image
FROM node:16

# 2. Set the working directory in the container
WORKDIR /app

# 3. Copy package.json and package-lock.json to the container
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the rest of the application files to the container
COPY src ./src

# 6. Expose the port the app will run on
EXPOSE 3000

# 7. command to run app
CMD ["npm", "start"]
