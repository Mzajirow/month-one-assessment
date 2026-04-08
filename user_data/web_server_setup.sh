#!/bin/bash
set -euxo pipefail
yum update -y
yum install -y httpd
systemctl enable httpd
systemctl start httpd
PRIVATE_IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)
echo "Hello from Web Server - $PRIVATE_IP" > /var/www/html/index.html