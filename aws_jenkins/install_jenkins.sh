echo "Installing Jenkins..."

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
echo "Starting Jenkins"
sudo systemctl start jenkins

echo "Opening Firewall Ports..."
sudo ufw enable
sudo ufw allow 8080


echo "Please check http://your_server_ip_or_domain:8080 in browser to access jenkins"