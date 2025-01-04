# Media Server 0.1

### Plex Sonarr Radarr Qbittorrent Jackett

qbittorrent uses port `9091` for WEBUI for historical reasons (transmission-bt used it)

### Usage

```sh
$ podman-compose up -d
```

Use systemd to persist the mediaserver between reboots

```sh
$ podman-compose systemd -a create-unit
$ podman-compose systemd -a register
```

### Other stuff

Cool list of trackers for qbittorrent: https://github.com/ngosang/trackerslist/
