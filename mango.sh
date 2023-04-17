cp mango.repo /etc/yum.repos.d/mongo.repo
yum install mongodb-org -y
vim /etc/mongod.conf
systemctl restart mongod
systemctl enable mongod