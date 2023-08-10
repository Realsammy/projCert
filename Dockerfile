# Use base image
FROM devopsedu/webapp

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy code to the Apache web server document root
COPY . 

# Set the ServerName in Apache configuration
#RUN echo "ServerName 44.217.5.12" >> /etc/apache2/apache2.conf

# Expose a different port for HTTP traffic (e.g., 8080)
EXPOSE 80

# Start the web server with the new port
CMD ["apache2ctl", "-D", "FOREGROUND"]
