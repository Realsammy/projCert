# Use base image
#FROM devopsedu/webapp

# Set the working directory inside the container
#WORKDIR /var/www/html

# Copy code to the Apache web server document root
#COPY . .

# Expose port 80 for HTTP traffic
#EXPOSE 80

# Use base image
FROM devopsedu/webapp

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy code to the Apache web server document root
COPY . .

# Expose a different port for HTTP traffic (e.g., 8080)
EXPOSE 8080

# Start the web server with the new port
CMD ["apache2ctl", "-D", "FOREGROUND"]

