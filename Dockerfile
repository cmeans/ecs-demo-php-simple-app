# Use the official Nginx image from Docker Hub
FROM nginx:stable

# Remove the default nginx index page
RUN rm /usr/share/nginx/html/index.html

# Copy the custom index.html into the container
COPY src/index.html /usr/share/nginx/html

# Expose port 80 to the Docker host, so we can access it
# from the outside.
EXPOSE 80

# The base image nginx already includes a CMD instruction
# to run nginx in the foreground, so we don't need to add it
