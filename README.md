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
