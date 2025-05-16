# APT Repo for ssprea nvidia control


## Add backports PPA (Required for Ubuntu versions prior to 24.10)

Ubuntu versions prior to 24.10 do not have .NET 9 in their standard repositories. To install ssprea-nvidia-control on these versions, you need to add the Canonical PPA for backports:

```
sudo add-apt-repository ppa:dotnet/backports
sudo apt update
```

More details about this PPA can be found [here](https://launchpad.net/~dotnet/+archive/ubuntu/backports).



## How to add repo

Copy and paste the following commands in your terminal:

```
curl -s --compressed "https://ssprea.github.io/snvctl-apt-repo/ubuntu/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/snvctl-apt-repo.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/snvctl.list "https://ssprea.github.io/snvctl-apt-repo/ubuntu/snvctl.list"
sudo apt update
```



## Install software

```
sudo apt install ssprea-nvidia-control ssprea-nvidia-control-cli
```

If you get an error that looks like this, follow the backports PPA section:

```
The following packages have unmet dependencies:
 ssprea-nvidia-control : Depends: dotnet-runtime-9.0 but it is not installable
 ssprea-nvidia-control-cli : Depends: dotnet-runtime-9.0 but it is not installable
E: Unable to correct problems, you have held broken packages.

```
