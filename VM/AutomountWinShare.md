# Automount a Windows share

Because of all the obvious security issues, no automated script, but a set of instructions to get the file share up and running. I like to use this method to store my repositories outside my Virtual Machines when I don't want my code uploaded to a public repository.

Please replace all **BOLDCAPITALS** with your own values.

### How to mount a Windows file share

##### 1. Create a credentials file
> gedit ~/.shareCredentials

and add the following text (no spaces!!):

> domain=**DOMAIN**  
> username=**USERNAME**  
> password=**PASSWORD**  

##### 2. Secure the credentials file
> chmod 600 ~/.shareCredentials

##### 3. Create a folder to mount the share
> sudo mkdir /mnt/**FOLDERNAME**/

##### 4. Mount the file share as root
> sudo mount -t cifs -o "credentials=/home/**USER**/.shareCredentials" //**SERVERNAME**/**SHARENAME** /mnt/**FOLDERNAME**

To unmount the file share:

> sudo umount /mnt/**FOLDERNAME**

### Automatically mount a file share at system startup

##### 5. Find the users ID
In a terminal type

> id **USER**

and find the user's UID and GID in the output. For Linux Mint 17 the UID and GID of the first user created seem to be 1000.

##### 6. Add mount details to fstab
> sudo gedit /etc/fstab

and add the following line:

> //**SERVERNAME**/**SHARENAME**  /mnt/**FOLDERNAME** cifs defaults,uid=**UID**,gid=**GID**,credentials=/home/**USER**/.shareCredentials 0 0

##### Optionally: mount directly
> sudo mount -a
