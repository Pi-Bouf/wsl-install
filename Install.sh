#!/bin/bash

echo "##################################################"
echo "### WSL Installation                           ###"
echo "##################################################"

# Add NodsJS's repo
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

# Add Brave's repo
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Update and Upgrade
sudo apt-get update
sudo apt-get upgrade -y

# Install all utilities
sudo apt-get install gedit nautilus mysql-client mysql-server apt-transport-https curl zsh yadm make automake nodejs brave-browser nginx mysql-server mysql-client php7.4-bcmath php7.4-bz2 php7.4-cgi php7.4-cli php7.4-common php7.4-curl php7.4-dev php7.4-fpm php7.4-gd php7.4-intl php7.4-json php7.4-mbstring php7.4-odbc php7.4-opcache php7.4-readline php7.4-sqlite3 php7.4-xml php7.4-xmlrpc php7.4-zip php7.4-mysql -y

# Install composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/bin/composer

# Install Jetbrains Toolbox <3
wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.28.1.15219.tar.gz -P /tmp
tar -zxf /tmp/jetbrains-toolbox-*.tar.gz -C ~/
mkdir -p ~/.local/share/JetBrains/Toolbox/bin/
mkdir -p ~/.local/share/JetBrains/Toolbox/shortcuts/
mv ~/jetbrains-toolbox-*/jetbrains-toolbox ~/.local/share/JetBrains/Toolbox/bin/jetbrains-toolbox

# Install Yarn
sudo npm install -g yarn

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
