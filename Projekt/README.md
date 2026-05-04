# IT infrastruktuuri disain ja teostus

## 📌 Projekti kirjeldus
Projekt simuleerib väikese raamatupidamisfirma IT infrastruktuuri.

- Kasutajaid: 17
- Nõue: kõrge töökindlus + automaatsed varukoopiad
- Lahendus põhineb Dockeril ja ise hostitud teenustel

---

## 🏗️ Arhitektuur

Teenused:

- **Nginx** – reverse proxy
- **Backend** – rakendus (API / web app)
- **PostgreSQL** – andmebaas
- **Backup service** – automaatne varundamine

---

## ⚙️ Kasutatavad tehnoloogiad

- Docker & Docker Compose
- Nginx
- PostgreSQL
- Cron (backup)

---

## 🚀 Käivitamine

```bash
cp .env.example .env
docker-compose up -d
