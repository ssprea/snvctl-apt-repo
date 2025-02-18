# APT Repo for ssprea nvidia control

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
