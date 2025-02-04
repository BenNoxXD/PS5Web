# install dependencies
sudo apt-get install -y git python3
# remove old version
sudo systemctl stop ps5web
sudo systemctl disable ps5web
rm /etc/systemd/system/ps5web.service
cd /opt
sudo rm -r PS5Web
# download new version
sudo git clone https://github.com/BenNoxXD/PS5Web
# create a service for autostart
cat > /etc/systemd/system/ps5host.service <<- "EOF"
[Unit]
Description=PS5 Web Browser

[Service]
WorkingDirectory=/opt/PS5Web/
ExecStart=/usr/bin/python3 webserver.py

[Install]
WantedBy=multi-user.target
EOF
# enable the service
sudo systemctl start ps5web
sudo systemctl enable ps5web