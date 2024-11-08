# Use the Bitnami NGINX image as a base
FROM bitnami/nginx:latest

# Expose the port that NGINX will listen on
EXPOSE 8080

# Run NGINX in the foreground (this is the default entrypoint for Bitnami's NGINX)
CMD ["nginx", "-g", "daemon off;"]