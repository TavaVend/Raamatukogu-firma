# Projekti kirjeldus

## Eesmärk

Luua veebipõhine raamatupidamise infosüsteem, mis võimaldab väikese ettevõtte (17 kasutajat) klientidel hallata oma finantsandmeid ühes turvalises keskkonnas.

---

## Probleem, mida lahendatakse

Väikesed ettevõtted hoiavad tihti finantsandmeid erinevates failides ja süsteemides, mis teeb andmete haldamise keeruliseks ja ebaühtlaseks. Selle projekti eesmärk on tuua kõik andmed ühte süsteemi.

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

- **Nginx** – suunab kasutaja päringud
- **Manager.io** – töötleb ja salvestab finantsandmed
- **Backup süsteem** – teeb automaatseid varukoopiaid (kohustuslik)

---

## Kasutatavad tehnoloogiad

- Docker (teenuste käivitamine)
- Manager.io (raamatupidamistarkvara)
- Nginx (reverse proxy)
- Bash (varundamine)

---

## Stsenaarium

| Parameeter | Väärtus |
|---|---|
| Kasutajate arv | 17 |
| Ettevõtte tüüp | Raamatupidamisfirma |
| Eritingimus | Varukoopiad on kohustuslikud |
