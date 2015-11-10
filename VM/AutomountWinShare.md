# Automount a Windows share

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

