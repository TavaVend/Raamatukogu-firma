# IT infrastruktuuri disain ja teostus

## 📌 Projekti eesmärk
Luua väikese raamatupidamisfirma (17 kasutajat) IT infrastruktuur, kasutades konteinertehnoloogiat ja ise hostitud teenuseid.

---

## 🏗️ Arhitektuur

Süsteem koosneb järgmistest teenustest:

- **Nginx** – reverse proxy (suunab liikluse backendile)
- **Backend** – rakendus
- **PostgreSQL** – andmebaas
- **Backup service** – automaatne varundamine

### Andmevoog

Kasutaja → Nginx → Backend → PostgreSQL

---

## 👤 Kliendid

Kasutajad pääsevad süsteemile ligi veebibrauseri kaudu:

- Google Chrome
- Mozilla Firefox
- Microsoft Edge

Ühendus toimub HTTP/HTTPS kaudu.

---

## ⚙️ Kasutatavad tehnoloogiad

- Docker
- Docker Compose
- Nginx
- PostgreSQL
- Cron (backup)

---

## 🚀 Käivitamine

### 1. Kopeeri keskkonnamuutujad

```bash
cp .env.example .env
