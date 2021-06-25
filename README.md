<h1 align="center">
  <br>
  <a href="https://phoenixnap.com/bare-metal-cloud"><img src="https://user-images.githubusercontent.com/78744488/109779287-16da8600-7c06-11eb-81a1-97bf44983d33.png" alt="phoenixnap Logo" width="300"></a>
  <br>
  Bare Metal Cloud Controller for Kubernetes
  <br>
</h1>

<p align="center">
The golden image created using Packer allows you to integrate Rancher with your vSphere to be able to deploy a Kubernetes cluster. 
</p>

<p align="center">
  <a href="https://phoenixnap.com/bare-metal-cloud">Bare Metal Cloud</a> •
  <a href="https://developers.phoenixnap.com/">Developers Portal</a> •
  <a href="https://developers.phoenixnap.com/docs/bmc/1/overview">API Documentation</a> •
  <a href="http://phoenixnap.com/kb">Knowledge Base</a> •
  <a href="https://developers.phoenixnap.com/support">Support</a>
</p>
Notes:

create hashed and salted password for installer
$ openssl passwd -6 -salt xyz changeme 
$6$xNsPV508IB6sk$pTEPpSXgmPbJp85STQnZwsY91J9x0aIzHJyiQQwt471WIzTqFmoNQkYIWn2elQbiEI3THIa2cS67MRAmYYBAy0



insert values inside variables.json

example:
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

run packer
/usr/bin/packer build --force --var-file=variables.json ubuntu-2004.json
