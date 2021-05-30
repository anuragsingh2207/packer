echo " Installing Jenkins...."
sudo yum install java-1.8.0-openjdk.x86_64
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins
sudo systemctl start jenkins

echo "Openeing Firewall Ports..."
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

echo "Jenkins has been installed"
echo "Please check http://your_ip_or_domain:8080"