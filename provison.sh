# update
sudo apt-get update -y

# upgrade
sudo apt-get upgrade -y

# nginx installation, enable and start
sudo apt-get install nginx -y
sudo systemctl enable nginx


# Node installation / v6
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

cd app
cd app

# Install pm2
sudo apt-get install npm -y 
npm install pm2 -g -y
