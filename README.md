# Media Server 0.1

This podman-compose sets up next services:

- plex
- sonarr
- radarr
- overseerr
- qbittorrent
- jackett

### Notes

qbittorrent uses port `9091` for WEBUI due to historical reasons (it was used by transmission-bt)

Cool list of trackers for qbittorrent: https://github.com/ngosang/trackerslist/

### Usage

```sh
$ podman-compose up -d
```

Use systemd to persist the media server between reboots

```sh
$ podman-compose systemd -a create-unit
$ podman-compose systemd -a register
```
