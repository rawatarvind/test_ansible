#!/bin/bash

# Define colors
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
RESET="\e[0m"

# configure repos 

mkdir -p /etc/yum.repos.d/online

mv /etc/yum.repos.d/CentOS-* /etc/yum.repos.d/online/


# create a local repos file

cat << EOF > /etc/yum.repos.d/local.repo
[local]
name=local
baseurl=http://10.77.1.11/index.html/
gpgcheck=0
enabled=1
EOF


yum install google-chrome skypeforlinux.x86_64 zoom.x86_64 wps-office.x86_64 glade* slack.x86_64 fusioninventory-agent.x86_64  thunderbird openvpn.x86_64 usbguard.x86_64  anydesk.x86_64 ntfs-3g.x86_64 kernel-ml-5.9.1-1.el7.elrepo.x86_64 -y 


if [ $? -eq 0 ]
then 
   echo -e "${GREEN} The installation of Packages is done Successfully ${RESET}"
  
else 
   echo -e "${RED} the installation of Packages is not done ${RESET}"

fi

# Prompt username and create a new user .

#echo -e "${BLUE} Enter the name ${RESET}"
#read name
#adduser $name
#echo "${GREEN} $name is created successfully ${RESET} "

# Set the password for $name user.

#echo "Set password of $name"
#sudo passwd "$name"

# Add match user in  sshd_config file. 

#if grep -q "Match user $name" /etc/ssh/sshd_config; then
#     echo -e "${BLUE} User $name is already exist in '/etc/ssh/sshd_config'${RESET}"
#else
#     echo "Match user $name 
#        PasswordAuthentication yes " >>/etc/ssh/sshd_config

#     echo -e "$name user is added inside '/etc/ssh/ssdh_config' file"
#fi

# Give sudo access of some services to $name user.

#echo "$name ALL=NOPASSWD: /usr/sbin/openvpn *" >> /etc/sudoers
#echo "$name ALL=NOPASSWD: /usr/bin/systemctl restart *" >> /etc/sudoers
#echo "$name ALL=NOPASSWD: /usr/bin/systemctl start onedrive@alex.service" >> /etc/sudoers
#echo "$name ALL=NOPASSWD: /usr/bin/systemctl stop onedrive@alex.service" >> /etc/sudoers
#echo "$name ALL=NOPASSWD: /usr/bin/mount *" >> /etc/sudoers
#echo "$name ALL=NOPASSWD: /usr/bin/umount  *" >> /etc/sudoers
#echo "$name ALL=NOPASSWD: /usr/bin/tail *" >> /etc/sudoers
#echo "$name ALL=NOPASSWD: /usr/bin/less *" >> /etc/sudoers
#echo "$name ALL=NOPASSWD: /usr/bin/kilall *" >> /etc/sudoers
#echo "$name ALL=NOPASSWD: /usr/bin/sh *" >> /etc/sudoers

#echo -e ${GREEN}"$name has been assigned sudoer permission!"${RESET}

# Set the UID for "$name" user

#echo -e ${BLUE} "Enter the UID" ${RESET}
#read uid

#if [[ $uid -gt 1000 ]]; then
#     su


#do usermod -u "$uid" "$name"
#else
#     echo -e ${GREEN} "Later add uid for $name,as it is less than 1000."${RESET}
#fi

# Add group name  and set the GID. 

#echo -e "${GREEN} Enter the Group Name ${RESET}"
#read groupname
#sudo groupadd "$groupname"
#echo -e "${RED} $groupname ${RESET} group is created successfully"

#echo -e "${BLUE} Enter the GID ${RESET}"
#read guid

#if [[ $guid -gt 1000 ]]; then
#     sudo groupmod -g $guid $groupname
#else
#     echo -e "${RED} later add the GID for $groupname, as it is less than 1000.${RESET}"
#fi

# Add the user to the Group

#if [[ $guid -gt 1000 ]]; then
#    sudo usermod  -G  "$groupname" "$name"
#    echo -e "${GREEN} $name has been added to $groupname.${RESET}"
#else 
#    echo -e "${RED} Add user to the Group later ${RESET}"

#fi

#echo -e "${GREEN}$(id $name)${RESET}"
#
# uncomment the line for wayland in ubuntu

#sed -i 's/^#WaylandEnable/WaylandEnable/' /etc/gdm3/custom.conf

# Append the lines directly to the file
#echo "allow with-interface one-of {03:01:02}" | sudo tee -a /etc/usbguard/rules.conf
#echo "allow with-interface one-of {03:01:01}" | sudo tee -a /etc/usbguard/rules.conf

#echo "Lines added to /etc/usbguard/rules.conf"


# change ownership of /mnt/Data

#chown $name:$name /mnt/Data*

#ls -l /mnt


# To remove sleep time in ubuntu 

#bash -c 'cat <<EOF >> /etc/systemd/logind.conf
#HandleLidSwitch=ignore
#HandleLidSwitchExternalPower=ignore
#HandleLidSwitchDocked=ignore
#EOF'

# To print the added lines in the files.

#sed -n '45,47p' /etc/systemd/logind.conf


echo "The default kernel-ml-5.9.1-1.el7.elrepo.x86_64 has been installed, plz reboot once!"

# Append the lines directly to the file
#echo "allow with-interface one-of {03:01:02}" | sudo tee -a /etc/usbguard/rules.conf
#echo "allow with-interface one-of {03:01:01}" | sudo tee -a /etc/usbguard/rules.conf


#if [ $? -eq 0 ] 
#then
#    echo -e "${GREEN} script run successfully, installed all packages,set kernel 5.9 as default ${RESET} "
#else
#    echo -e "${RED} check the error ${RESET}"
#fi
# change ownership of /mnt*
#chown krishs:krishs /mnt* -R
#ls -l /mnt

# Disabled the Selinux 

#sed  's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config

#cat /etc/selinux/config | grep SELINUX=disabled

# stop and disabled the firewall service.
#systemctl stop firewalld.service
#systemctl disable firewalld.service
#systemctl status firewalld.service

echo "Reboot the system "

