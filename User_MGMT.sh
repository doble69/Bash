#Viewing existing users
sudo cat /etc/passwd

#Add Users
sudo adduser username
#Complete fields

#Add users to Groups
sudo gpasswd -a username groupname

#Remove Users from Groups
sudo gpasswd -d username groupname

#Delete users
sudo userdel username

#See last login info
lastlog #All Users
#or
lastlog -u username

#Check History
history

#Check Activity in Real-Time
sudo sysdig -c spy_users

#If sysdig is not installed
sudo apt install sysdig
