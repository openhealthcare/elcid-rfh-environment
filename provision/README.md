A very basic set of steps to get you up and running
with the prod env of RFH


Step 1.
```
vagrant up
```


Step 2.
```
vagrant ssh
````

Step 3. (this takes a while)
```
cd /usr/lib/server_restore/backup_server/
sudo apt-get dselect-upgrade -y
```

In grub select the first option


Step 4.
```
sudo -u postgres psql
```

in postgres run

```
CREATE USER ohc;
```


Step 5.
```
sudo rm -f /etc/nginx/sites-enabled/default
sudo su ohc
cd /usr/lib/ohc/elcidrfh-deployment
mkvirtualenv elcidrfh-deployment
pip install -r requirements.txt
chmod 700 ./bin/deploy_test.sh
.bin/deploy_test {{ branch name }}
```

Create your super user and off you go.
