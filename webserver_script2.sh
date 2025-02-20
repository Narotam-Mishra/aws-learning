
#!/bin/bash
# Update the system package list
sudo yum update -y

# Install Apache web server (httpd)
sudo yum install -y httpd

# Start Apache service
sudo systemctl start httpd

# Enable Apache to start on boot
sudo systemctl enable httpd

# Create a simple HTML file to verify the web server is running
echo "<html><h1>Welcome to Apache Web Server on Amazon Linux - ${hostname}!</h1></html>"> /var/www/html/index.html