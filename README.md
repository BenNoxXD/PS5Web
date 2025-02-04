# PS5 Web Browser
Host the awesome PS5 Web Browser, made by [Leeful](https://github.com/Leeful/leeful.github.io) completely offline.
There are two versions to host the browser on your pc / server. They will both run on port 8008.

## Native
The first one is the native one. The command below will install the host files to `/opt/ps5web` and create a service to run the browser on startup. It is compatible with Debian and Ubuntu systems.

<br>

```sh
sudo apt update 
curl -s https://raw.githubusercontent.com/BenNoxXD/PS5Web/refs/heads/main/install_ps5web.sh | sudo bash
```

<br>


## Docker
The second one is to run it bundled in a Docker Container. `Clone and enter the repository`, then run the command below. 

<br>

```sh
docker build -t ps5web .
docker run -d -t -p 8008:8008 --name PS5-Web-Browser --restart always ps5web
```

<br>