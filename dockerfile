# Use the official Nginx image
FROM nginx:alpine

# Remove the default nginx static files (optional)
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html into the container
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx (base image already sets the default command)
CMD ["nginx", "-g", "daemon off;"]
