# Konfiguratsioonifailid

## Üldine
Projekt kasutab Dockerit, seetõttu on enamus konfiguratsioonist kirjeldatud failides, mitte käsitsi serveris seadistatud.

---

## docker-compose.yml
See fail kirjeldab kogu süsteemi teenuseid ja nende omavahelisi seoseid.

Selles failis on defineeritud:

- Nginx (reverse proxy)
- Backend rakendus
- PostgreSQL andmebaas
- Backup teenus

Lisaks määratakse:
- võrgud (networking)
- andmebaasi salvestus (volumes)
- teenuste sõltuvused (depends_on)

---

## .env.example
Sisaldab keskkonnamuutujaid, mida kasutatakse andmebaasi ja süsteemi seadistamiseks.

Näited:
- POSTGRES_USER
- POSTGRES_PASSWORD
- POSTGRES_DB

See fail on ainult näidis ja ei sisalda päris tundlikke andmeid.

---

## Volumes
Docker volumes kasutatakse andmete püsivaks salvestamiseks.

Näiteks:
- PostgreSQL andmebaasi andmed säilivad ka pärast containeri taaskäivitust
