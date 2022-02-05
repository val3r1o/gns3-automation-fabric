# GNS3 Automation OS10/SONiC fabric

This project aims to create a fully working GNS3 environment with Dell OS10 or SONiC preloaded NOS </br>
From clean Ubuntu desktop 20.04 to GNS3 running OS10/SONiC basic project</br>

sudo apt update</br>
sudo apt -y install git<br>
git clone https://github.com/val3r1o/gns3-automation-fabric.git <br>
cd gns3-automation-fabric <br>
sudo chmod 755 install.sh <br>
ls </br>

#run the script</br>
./install.sh

A reboot is needed to refresh user-permission ref: new project "uBridge is not available" error.

Now, run GNS3 and import the project under /gns3-automation-fabric</br>
do not use "sudo gns3" just "gns3" 

Have fun.

# NOTES:
Pre-requisites: Able to reach public internet and valid DNS set to resolve repo </br>
# 1
When prompted whether non-root users should be allowed to use wireshark and ubridge, select ‘Yes’ both times</br>
Run GNS3 from Shell or GUI </br>
First run:  next->next->next (no changes) i.e., localhost -> TCP:3080 & /usr/bin/gns3server
# 2
Import (not open) the project wait GNS3 to import </br>
Double check if the interfaces are correctly connected also on the OOB switch </br>
Run the nodes!! 
# 3
If not able to consol in: edit->preferences-> console application -> edit: KDE/KONSOLE <- Package already installed by the script</br>

OS10  usr/psw is standard admin/admin </br>
SONiC usr/psw is standard admin/YourPaSsWoRd

Setup the mgmt interface to the preferred OOB IP for your network. Example config provided </br>
All configs and script/inventory are aligned. should all work out-of-the-box




![image](https://user-images.githubusercontent.com/20860769/148770138-122bf4ab-c831-4e31-9f4a-26b94cd25755.png)

or

![image](https://user-images.githubusercontent.com/20860769/152649793-a94e6a17-c25e-4301-8653-88f60742bbb6.png)

