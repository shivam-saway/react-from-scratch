# Stage 1: Build the React app using Node.js
FROM node:16 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json into the container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files into the container
COPY . .

# Build the React app for production
RUN npm run build

# Stage 2: Serve the app with Nginx
FROM nginx:alpine

# Copy the build folder from the build stage to Nginx html folder
COPY --from=build /app/dist /usr/share/nginx/html

# Expose the port on which nginx will serve the app (default is 80)
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]

