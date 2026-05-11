version: '3.8'

services:
  nginx:
    image: nginx:1.25
    restart: unless-stopped
    ports:
      - "80:80"
    depends_on:
      - manager
    networks:
      - app_network
    volumes:
      - ./nginx.conf:/etc/nginx/nginx.conf
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost"]
      interval: 30s
      timeout: 10s
      retries: 3

  manager:
    image: cronet/manager.io:latest
    restart: unless-stopped
    networks:
      - app_network
    volumes:
      - manager_data:/data
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:8080"]
      interval: 30s
      timeout: 10s
      retries: 3

  backup:
    image: alpine:latest
    restart: unless-stopped
    depends_on:
      - manager
    volumes:
      - manager_data:/data:ro
      - backup_data:/backup
      - ./backup.sh:/backup.sh
    entrypoint: /bin/sh -c "chmod +x /backup.sh && crond -f"
    networks:
      - app_network

volumes:
  manager_data:
  backup_data:

networks:
  app_network:
