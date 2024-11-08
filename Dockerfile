# Use a lightweight Debian image as the base
FROM debian:slim-buster

# Update the package lists
RUN apt-get update && apt-get install -y nginx

# Copy the default Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]