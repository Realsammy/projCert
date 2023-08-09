# Use base image
FROM devopsedu/webapp

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy code to the Apache web server document root
COPY . .

# Expose port 80 for HTTP traffic
EXPOSE 80
