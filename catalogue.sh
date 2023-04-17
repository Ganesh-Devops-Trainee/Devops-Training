curl -sL https://rpm.nodesource.com/setup_lts.x | bash
cp catalogue.service /etc/systemd/system/catalogue.service
cp mango.repo /etc/yum.repos.d/mongo.repo
yum install nodejs -y
useradd roboshop
mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
cd /app
unzip /tmp/catalogue.zip
cd /app
npm install
systemctl daemon-reload
systemctl enable catalogue
systemctl start catalogue
yum install mongodb-org-shell -y
mongo --host 172.31.27.215 </app/schema/catalogue.js
systemctl restart catalogue

systemctl enable catalogue