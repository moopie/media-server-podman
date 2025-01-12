# Media Server Stack

This `podman-compose` spec sets up these services:

- plex
- sonarr
- radarr
- overseerr
- qbittorrent
- prowlarr
- flaresolverr

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