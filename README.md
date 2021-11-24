# gns3-automation-OS10fabric

From clean Ubuntu 20.04 to GNS3 running OS10 basic project

sudo apt update</br>
sudo apt install git<br>
git clone https://github.com/val3r1o/gns3-automation-OS10fabric.git <br>
cd gns3-automation-OS10fabric <br>
sudo chmod 755 install.sh <br>

#run the script read:NOTE. first</br>
./install.sh


# NOTES:

set DNS to reach public internet </br>
DNS set to resolve repo </br>

change the install.sh script to move the file under the right folder:
/home/XXXyournamexxx/GNS3/projects/

# 1
when prompted whether non-root users should be allowed to use wireshark and ubridge, select ‘Yes’ both times

run GNS3 from Shell or GUI
next->next->next (no changes) i.e., localhost -> TCP:3080 & /usr/bin/gns3server

# 2
edit->preferences-> console application -> edit: KDE/KONSOLE <- 

#3
Open the project evpn-simple-fabric, wait GNS3 to import. 

run. 
Have fun.
