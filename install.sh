
# 
sudo apt upgrade
sudo apt install net-tools
sudo apt install openssh-server
# sudo service ssh status
# ref: https://docs.gns3.com/docs/getting-started/installation/linux 
sudo add-apt-repository ppa:gns3/ppa                             
sudo apt install gns3-gui gns3-server
sudo apt-get install konsole

# fix oob port and ubuntu all-in-one reachability
wget https://www.dropbox.com/s/1dl86jern3g5zrb/simple-leaf-ubuntuhost.gns3project

#virbr0 should have been created by GNS3 installation. change IP address and down/up
sudo ifconfig virbr0 down
sudo ifconfig virbr0 10.10.10.1 netmask 255.255.255.0 up

echo ------------------------------------------------------------------------------------------------------
echo ------------------ This is an automatic script -------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo ------------------------------------------------- Dell NETWORKING ------------------------------------
echo --------------------------valerio.martini@gmail.com---------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
