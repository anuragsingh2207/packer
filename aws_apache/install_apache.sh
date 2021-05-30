
echo "Updating System..."
sudo yum  update -y

echo "Sleeping "
sleep 10


echo "installing Apache...."
sudo yum  install httpd -y

sleep 5

echo "Starting Apache Service..."
sudo systemctl start httpd 

sleep 5
sudo chkconfig httpd on

sleep 5

