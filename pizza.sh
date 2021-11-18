
# 
sudo apt update
sudo apt upgrade
sudo apt install net-tools
sudo apt install openssh-server
# sudo service ssh status
# ref: https://docs.gns3.com/docs/getting-started/installation/linux 
sudo add-apt-repository ppa:gns3/ppa                             
sudo apt install gns3-gui gns3-server
sudo apt-get install konsole

wget https://www.dropbox.com/s/u29uly3b3vphyi6/evpn-simple-fabric.gns3project
mkdir /home/valerio/GNS3/projects/evpn-simple-fabric
sudo mv evpn-simple-fabric.gns3project /home/valerio/GNS3/projects/evpn-simple-fabric/evpn-simple-fabric.gns3

echo ------------------------------------------------------------------------------------------------------
echo ------------------ This is an automatic script -------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo ------------------------------------------------- Dell NETWORKING ------------------------------------
echo --------------------------valerio.martini@gmail.com---------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
