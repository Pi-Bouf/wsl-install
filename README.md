# wsl-install
WSL configuration shell-script to make a beautiful web developer environment

## Fonts
Mello Patched:

https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k

## Before setup
Please, run following commands:

```
sudo su
echo "dev ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
exit

git clone https://github.com/Pi-Bouf/wsl-install.git
chmod u+x wsl-install/Install.sh
wsl-install/Install.sh
```