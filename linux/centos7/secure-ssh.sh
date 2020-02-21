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
echo "enter as path '/home/YourUserName/.ssh/authorized_keys'"
ssh-keygen -t rsa


