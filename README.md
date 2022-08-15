# monolithic_architecture

Monolithic software is designed to be self-contained, it is like a big container, wherein all the software components of an app are assembled and tightly coupled, i.e., each component fully depends on each other.

![alt text](<img src="images/../images/monolith-diagram.png">)

## create vagrantfile
`# What is vagrant - its owned by Hashi-Corp

# Ruby

Vagrant.configure("2") do |config|

 config.vm.box = "ubuntu/xenial64" #linux - ubuntu 16.04
# creating a virtual machine ubuntu 
config.vm.network "private_network", ip: "192.168.56.10"
# Once you have added private network, you need to reebot VM- vagrant reload 
# if reload doesnt work try vagrant destroy - then - vagrat up
 

config.vm.synced_folder ".", "/home/vagrant/app"

config.vm.provision "shell", path: "provision.sh"


end`

## create provision.sh
`
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
`
- Then run the following commands 
`vagrant destroy` 
`vagrant up`
`cd app` 
`cd app` - ensure you are in the right folder
`npm install`
`npm start`
- You should then see the following message 
'Your app is ready and listening on port 3000'



