# Use the official Nginx image
FROM nginx:latest

# Set working directory within the container
WORKDIR /usr/share/nginx/html

# Remove default nginx static resources
RUN rm -rf ./*

# Copy the contents of your project to the working directory
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX server when the container starts
CMD ["nginx", "-g", "daemon off;"]