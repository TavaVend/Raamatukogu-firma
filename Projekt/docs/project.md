# Projekti kirjeldus

## Eesmärk
Luua veebipõhine raamatupidamise infosüsteem, mis võimaldab väikese ettevõtte klientidel hallata oma finantsandmeid ühes keskonnas.

---

## Probleem, mida lahendatakse
Väikesed ettevõtted hoiavad tihti finantsandmeid erinevates failides ja süsteemides, mis teeb andmete haldamise keeruliseks ja ebaühtlaseks.

Selle projekti eesmärk on tuua kõik andmed ühte süsteemi.

---

## Kasutajad
- ettevõtted
- eraisikud
- raamatupidajad (admin kasutajad)

---

## Funktsionaalsus
- tehingute registreerimine
- arvete ja kulude haldamine
- andmete salvestamine andmebaasi
- aruannete genereerimine

---

## Süsteemi ülevaade
Süsteem koosneb mitmest teenusest:

- Nginx – suunab kasutaja päringud
- Backend – töötleb andmeid
- PostgreSQL – salvestab andmed
- Backup süsteem – teeb varukoopiaid

---

## Kasutatavad tehnoloogiad
- Docker (teenuste käivitamine)
- PostgreSQL (andmebaas)
- Nginx (reverse proxy)
