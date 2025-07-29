#!/bin/bash

# Update system packages
sudo dnf update -y

# Install Java 17 (OpenJDK)
sudo dnf install -y java-17-amazon-corretto

# Verify Java installation
java -version

# Add Jenkins repository and import GPG key
sudo curl --silent --location https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-jenkins.io > /dev/null

sudo tee /etc/yum.repos.d/jenkins.repo > /dev/null <<EOF
[jenkins]
name=Jenkins-stable
baseurl=https://pkg.jenkins.io/redhat-stable
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-jenkins.io
EOF

# Update DNF and install Jenkins
sudo dnf upgrade -y
sudo dnf install -y jenkins

# Enable and start Jenkins service
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Check Jenkins status
sudo systemctl status jenkins


