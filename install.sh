#!/bin/bash
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
#
echo
echo
echo

# wireshark permission to get call from GNS3 directly
sudo chmod a+rwx /usr/bin/dumpcap

echo "OPTIONS: 1 = Leaf-Pair OS10 - 2 = Full Fabric SONiC "
echo "OS10  is fully configured Node 5GB vs SONiC is first run 800MB"

options=("OS10" "SONiC")
select opt in "${options[@]}"
do
    case $opt in
        "OS10")
            echo "YOU CHOSE TO PLAY WITH OS10"
            # download an example project (new no OOB issue)
            wget https://www.dropbox.com/s/k461f8dov3wpf9s/1Single-Rack-OS10.gns3project
            break
            ;;
        "SONiC")
            echo "YOU CHOSE TO PLAY WITH SONiC"
            wget https://www.dropbox.com/s/w8zug3bbka3wg1o/Simple-SONiC-Leaf-default.gns3project
            break
            ;;
    esac
done


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




echo "You need to reboot"

options=("reboot" "stay")
select opt in "${options[@]}"
do
    case $opt in
        "reboot")
            echo "Reboot now"
            sudo reboot -h now
            ;;
        "stay")
            echo "you need to reboot manually to refresh user permission for GNS3"
            break
            ;;
    esac
done

