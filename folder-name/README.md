# Projekt: IT infrastruktuuri disain ja teostus

## Stsenaarium

- Kasutajate arv: 17
- Ettevõtte tüüp: Raamatupidamisfirma
- Eritingimus: Kohustuslikud varukoopiad

## Kasutatavad tehnoloogiad

- Docker
- Nginx
- PostgreSQL
- Backup service (cron + volume backup)

## Teenused

- Web (Nginx reverse proxy)
- Backend (rakendus)
- Database (PostgreSQL)
- Backup (automaatne varundamine)

## Käivitamine

```bash
docker-compose up -d
