- Add `nginx`

```yaml
  nginx:
    image: nginx:latest
    ports:
      - 80:80
      - 443:443
    volumes:
      - ./nginx.conf:/etc/nginx/nginx.conf
      - ./certs:/etc/nginx/certs
    networks:
      - media-network
```

- Support `docker-compose`
