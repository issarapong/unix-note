#Start as local user
sudo -s
apt-get update
echo “deb http://download.webmin.com/download/repository sarge contrib”  >> /etc/apt/sources.list
wget -q -O- http://www.webmin.com/jcameron-key.asc | sudo apt-key add
apt-get update
apt-get -y install webmin
apt install apache2
apt-get install php php-cli php-fpm php-json php-common php-mysql php-zip unzip php-gd php-mbstring php-curl php-xml php-pear php-bcmath
wget -O composer-setup.php https://getcomposer.org/installer
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
cd /var/www/html/
composer create-project --prefer-dist laravel/laravel . "6.*"

