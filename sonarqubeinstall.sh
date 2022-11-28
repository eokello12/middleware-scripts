uthor: Emmanuel Okello
# Descrption: Sonarqube install
# Date : 11/28/2022

# Has to be installed as regular user instead of root (https://dataservicegroup.atlassian.net/wiki/spaces/RET/pages/1991246045/Sonarqube+installation+on+Centos-7#:~:text=Follow%20below%20steps%20successively%20to%20install%20sonarqube%20on%20your%20centOS%20server.%20This%20process%20need%20to%20be%20run%20as%20a%20regular%20user%20(%20Sonarqube%20doesnt%20work%20when%20you%20start%20it%20as%20root%20user).      

# Java 11 Installation

sudo yum update -y
sudo yum install java-11-openjdk0devel -y
sudo yum install java-11-openjdk -y

# SonarQube Install

cd /opt
sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

# Package extraction

sudo install unzip -y
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip

# Changing ownership to the user and switch to linux binaries directory to start service

sudo unzip /opt/sonarqube-9.3.0.51899.zip
cd /opt/sonarqube-x.x/bin/linux-x86-64
 ./sonar.sh start

# Disabling the firewall (Just in case it is active)
sudo firewall-cmd --permanent -add-port=9000/tcp
sudo firewall-cmd --reload

# Default credentials for Sonarqube login
# Username: admin# Password: admin ((*dallas))

