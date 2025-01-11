# Media Server Stack

This `podman-compose` spec sets up these services:

- plex
- sonarr
- radarr
- overseerr
- qbittorrent
- prowlarr
- flaresolverr
- nginx

### Notes

- `qbittorrent` uses port `9091` for `WEBUI` due to historical reasons (it was used by `transmission`)
- Cool list of trackers for `qbittorrent`: https://github.com/ngosang/trackerslist/
- `flaresolverr` is required to bypass cloudflare ddos protections
- Replaced `jackett` with `prowlarr` because it can sync up indexers in `sonarr` and `radarr` on it's own

### Usage

```sh
$ podman-compose up -d
```

Use `systemd` to persist the stack between reboots

```sh
$ podman-compose systemd -a create-unit
$ podman-compose systemd -a register
```

`nginx` runs on port `8080` because non-root users cant bind on port `80` and I am going for a rootless setup

Instead use iptables to redirect the port `80` to `8080`

```sh
$ sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080
```
