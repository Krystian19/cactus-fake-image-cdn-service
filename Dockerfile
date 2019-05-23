FROM nginx:1.15.0-alpine

# Create directory that holds the images
RUN mkdir -p /var/www

EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf