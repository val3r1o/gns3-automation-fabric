# gns3-automation-OS10fabric

From clean Ubuntu desktop 20.04 to GNS3 running OS10 basic project

sudo apt update</br>
sudo apt install git<br>
git clone https://github.com/val3r1o/gns3-automation-OS10fabric.git <br>
cd gns3-automation-OS10fabric <br>
sudo chmod 755 install.sh <br>

#run the script</br>
./install.sh

now, run GNS3 and import the project under /gns3-automation-OS10fabric/single-leaf</br>
OS10 usr/psw is standard admin/admin

Have fun.

# NOTES:
set DNS to reach public internet </br>
DNS set to resolve repo </br>
# 1
when prompted whether non-root users should be allowed to use wireshark and ubridge, select ‘Yes’ both times
run GNS3 from Shell or GUI
first run:  next->next->next (no changes) i.e., localhost -> TCP:3080 & /usr/bin/gns3server
# 2
if not able to consol on OS10
edit->preferences-> console application -> edit: KDE/KONSOLE <- this package is already installed by the script.
# 3
Import (not open) the project wait GNS3 to import.
double check if the interfaces are correctly connected also on the OOB switch. 
run the nodes.
