# Arhitektuur

## Komponendid

- Nginx – suunab liikluse
- Backend – töötleb andmeid
- PostgreSQL – salvestab andmed
- Backup – teeb varukoopiad

## Andmevoog

Kasutaja → Nginx → Backend → Andmebaas

## Turvalisus

- andmebaas ei ole avalik
- teenused suhtlevad sisevõrgus
