# Use the nginx image with Alpine Linux as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the index.html, style.css, and images directory from the current directory to the container's working directory
COPY . .

# Expose port 80
EXPOSE 80

# Command to start the nginx server
CMD ["nginx", "-g", "daemon off;"]
 