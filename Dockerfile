# Use the official PHP and Apache base image
FROM php:8.0-apache

# Copy your PHP website code to the Apache web server document root
COPY website/ /var/www/html/

# Expose port 80 for HTTP traffic
EXPOSE 80
