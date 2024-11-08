# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy custom Nginx configuration file (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy your website content (e.g., HTML files) to the Nginx server's default content directory
COPY ./html /usr/share/nginx/html

# Expose port 80 (HTTP) and 443 (HTTPS)
EXPOSE 80
EXPOSE 443

# Optional: Set environment variables (if needed)
# ENV NGINX_HOST=localhost

# Default command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]