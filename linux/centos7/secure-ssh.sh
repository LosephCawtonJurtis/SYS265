#secure-ssh.sh
#author gymcyber
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes roots ability to ssh in
#!/bin/bash
sudo -i
read -p "Enter user name" username
useradd $username
mkdir /home/$username/.ssh
cp SYS265/linux/public-keys/id_rsa.pub /home/$username/.ssh/authorized_keys
chmod 700 /home/$username/.ssh
chmod 600 /home/$username/.ssh/authorized_keys
chown -R $username:$username /home/$username/.ssh
echo $username "complete"


