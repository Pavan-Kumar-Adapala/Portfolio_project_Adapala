# Use the official Nginx base image
FROM nginx:latest

# Remove the default static website files
RUN rm -rf /usr/share/nginx/html/*
# Copy website files to Nginx's serving directory
COPY . /usr/share/nginx/html

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Set the working directory
WORKDIR /usr/share/nginx/html

# Expose port 80 to allow access to the website
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

