apt-key add Repo.keys
cp -R sources.list* /etc/apt/
apt-get install dselect && sudo dselect update
dpkg --set-selections < Package.list
apt-get dselect-upgrade -y