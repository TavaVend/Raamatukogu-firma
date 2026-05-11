# Arhitektuur

## Komponendid

- **Nginx** – suunab liikluse, ainult avalik teenus (port 80)
- **Manager.io** – raamatupidamistarkvara, sisevõrgus (port 8080)
- **Backup** – teeb automaatseid varukoopiaid Manager.io andmetest

---

## Andmevoog

Kasutaja → Nginx (port 80) → Manager.io (port 8080) → Andmed

---

## Võrgudisain

Kõik teenused töötavad eraldi Docker võrgus (`app_network`).

- Ainult Nginx on avalikult ligipääsetav (port 80)
- Manager.io on sisemine teenus (port 8080, ei ole väljastpoolt nähtav)
- See tagab parema turvalisuse

---

## Turvalisus

- Manager.io ei ole otse internetist ligipääsetav
- Teenused suhtlevad sisevõrgus
- Andmed salvestatakse Docker volume'isse (püsivad ka pärast taaskäivitust)

---

## Varundamine

- Varukoopiad tehakse iga päev automaatselt
- Varukoopiad säilitatakse 7 päeva
- Vanemad varukoopiad kustutatakse automaatselt
- Varukoopiad salvestatakse eraldi volume'isse (`backup_data`)
