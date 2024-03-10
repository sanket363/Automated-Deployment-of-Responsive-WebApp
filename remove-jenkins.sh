# Stop Jenkins service
sudo systemctl stop jenkins

# Uninstall Jenkins package
sudo apt-get purge jenkins -y

# Remove Jenkins configuration files
sudo rm -rf /etc/apt/sources.list.d/jenkins.list
sudo rm -rf /usr/share/keyrings/jenkins-keyring.asc

# Remove Jenkins user and group (optional)
sudo userdel jenkins
sudo groupdel jenkins

# Clean up any remaining dependencies
sudo apt-get autoremove -y

# Reload the package database
sudo apt-get update
