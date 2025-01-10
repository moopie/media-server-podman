# Media Server 0.1

This podman-compose sets up next services:

- plex
- sonarr
- radarr
- overseerr
- qbittorrent
- prowlerr
- flareserverr

### Notes

- qbittorrent uses port `9091` for WEBUI due to historical reasons (it was used by transmission-bt)
- Cool list of trackers for qbittorrent: https://github.com/ngosang/trackerslist/
- flareserverr is required to bypass solarflare ddos protections

### Usage

```sh
$ podman-compose up -d
```

Use systemd to persist the media server between reboots

```sh
$ podman-compose systemd -a create-unit
$ podman-compose systemd -a register
```

Nginx runs on port `8080` because users cant start things on port `80`

Instead use iptables to redirect `80` to `8080`

```sh
$ sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080
```
