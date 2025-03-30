# Use the official Nginx base image
FROM nginx:latest

# Remove the default static website files
RUN rm -rf /usr/share/nginx/html/*
# Copy website files to Nginx's serving directory
COPY . /usr/share/nginx/html

# Copy the fixed Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to allow access to the website
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

