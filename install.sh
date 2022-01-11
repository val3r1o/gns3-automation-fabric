
# 
sudo apt -y upgrade
sudo apt -y install net-tools
sudo apt -y install openssh-server
# sudo service ssh status
# ref: https://docs.gns3.com/docs/getting-started/installation/linux 
sudo add-apt-repository ppa:gns3/ppa -y
sudo apt -y install gns3-gui gns3-server
sudo apt -y install konsole

#virbr0 should have been created by GNS3 installation. This change IP address making a new config file
sudo mv default.xml /etc/libvirt/qemu/networks/

# download an example project (new no OOB issue)
wget https://www.dropbox.com/s/k461f8dov3wpf9s/1Single-Rack-OS10.gns3project

echo
echo ------------------------------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo -------------------------------------- Thats all folks "!!" ------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo ------------------ This is an automatic script -------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo ------------------------------------------------- Dell NETWORKING ------------------------------------
echo -----------------valerio.martini@gmail.com------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
