# Projekti kirjeldus

## Eesmärk

Seadistada väikesele raamatupidamisfirmale (17 kasutajat) IT infrastruktuur, kasutades olemasolevat self-hosted raamatupidamistarkvara **Manager.io**.

Me ei loonud tarkvara ise – valisime parima olemasoleva lahenduse ja seadistasime selle oma firmale.

---

## Probleem

Väikesed raamatupidamisfirmad hoiavad tihti andmeid erinevates kohtades (Exceli failid, e-mailid jne). See on ebaturvaline ja raskesti hallatav.

**Lahendus:** Üks keskne süsteem kõigile 17 kasutajale, mis on turvaliselt self-hosted.

---

## Valitud tarkvara: Manager.io

Manager.io on tasuta avatud lähtekoodiga raamatupidamistarkvara.

Mida Manager.io oskab:
- arvete koostamine ja haldamine
- kulude jälgimine
- pangakonto haldus
- finantsaruannete genereerimine
- mitme kasutaja tugi

Miks valisime just selle:
- 100% tasuta
- self-hosted (andmed jäävad meie serverisse)
- töötab Docker konteineris
- lihtne kasutada, sobib raamatupidajatele

---

## Nõuded

| Nõue | Lahendus |
|---|---|
| 17 kasutajat | Manager.io toetab mitut kasutajat |
| Varukoopiad kohustuslikud | Alpine Linux konteiner käivitab backup.sh iga päev |
| Self-hosted | Docker konteiner Ubuntu serveris |
| Ligipääs brauserist | Nginx reverse proxy port 80 kaudu |
| Turvaline ligipääs | VPN (TPTLAB-STUDVPN) |
