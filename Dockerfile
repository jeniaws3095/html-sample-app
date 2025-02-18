# Use the official Nginx image as the base image
FROM nginx:latest

# Copy your custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the HTML files to the Nginx default HTML directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
