# Use the Bitnami NGINX image as a base
FROM bitnami/nginx:latest

# Copy your custom NGINX configuration files (if any) into the container
# If you have a custom NGINX config, you can copy it here:
COPY nginx.conf /opt/bitnami/nginx/conf/server_blocks/

# Copy your HTML files (or any other static content you want to serve)
# Example: copying a local 'html' directory into the container's web directory
COPY ./html /opt/bitnami/nginx/html/

# Expose the port that NGINX will listen on
EXPOSE 80 443

# Optional: Set environment variables for NGINX (if needed)
ENV NGINX_ENABLE_IPV6=yes

# Run NGINX in the foreground (this is the default entrypoint for Bitnami's NGINX)
CMD ["nginx", "-g", "daemon off;"]