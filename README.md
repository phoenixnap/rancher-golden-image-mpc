<h1 align="center">
  <br>
  <a href="https://phoenixnap.com/private"><img src="https://user-images.githubusercontent.com/81640346/123400365-fa43ce80-d5a5-11eb-89c8-5a65a02a8cac.png" alt="phoenixnap Logo" width="300"></a>

  <br>
Rancher Golden Image for MPC
  <br>
</h1>

<p align="center">
The golden image created using Packer allows you to integrate Rancher with your vSphere to be able to deploy a Kubernetes cluster. 
</p>

<p align="center">
  <a href="https://phoenixnap.com/private">Managed Private Cloud</a> •
  <a href="https://developers.phoenixnap.com/">Developers Portal</a> •
  <a href="http://phoenixnap.com/kb">Knowledge Base</a> •
</p>

## Notes:

**1. Create hashed and salted password for installer.**

    $ openssl passwd -6 -salt xyz changeme 
     $6$xNsPV508IB6sk$pTEPpSXgmPbJp85STQnZwsY91J9x0aIzHJyiQQwt471WIzTqFmoNQkYIWn2elQbiEI3THIa2cS67MRAmYYBAy0



**2. Insert values inside variables.json**

 Example:
 
    {
        "vcenter_server":"10.100.2.20",
        "username":"admin",
        "password":"changeme",
        "datastore":"PHX-GLM-DS-01",
        "folder":"g-rke-cluster-dev",
        "cluster":"PHX-GLM",
        "network":"K8SRKENETWORK",
        "ssh_username":"ubuntu",
        "ssh_password":"changeme"
     }

**3. Run packer**

    /usr/bin/packer build --force --var-file=variables.json ubuntu-2004.json


  ### Contact phoenixNAP

Get in touch with us if you have questions or need help with Managed Private Cloud or our other solutions.

<p align="left">
  <a href="https://twitter.com/phoenixNAP">Twitter</a> •
  <a href="https://www.facebook.com/phoenixnap">Facebook</a> •
  <a href="https://www.linkedin.com/company/phoenix-nap">LinkedIn</a> •
  <a href="https://www.instagram.com/phoenixnap">Instagram</a> •
  <a href="https://www.youtube.com/user/PhoenixNAPdatacenter">YouTube</a> •
  <a href="https://developers.phoenixnap.com/support">Email</a> 
</p>
