cp mango.repo /etc/yum.repos.d/mongo.repo
yum install mongodb-org -y
systemctl enable mongod
systemctl start mongod
vim /etc/mongod.conf
systemctl restart mongod