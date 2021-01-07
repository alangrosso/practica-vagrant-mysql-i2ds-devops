

sudo yum -y update

sudo rpm -Uvh https://repo.mysql.com/mysql80-community-release-el7-3.noarch.rpm
sudo sed -i 's/enabled=1/enabled=0/' /etc/yum.repos.d/mysql-community.repo

sudo yum --enablerepo=mysql80-community install mysql-community-server -y

sudo service mysqld restart

sudo grep 'temporary password' /var/log/mysqld.log