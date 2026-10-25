# Introduzione
Sito per DVRI (<a href="http://distrettovenezianoricerca.it/">Distretto Veneziano della Ricerca</a>)

## Per far partire il server

`bundle exec jekyll serve`

## Per costruire il sito da caricare

`bundle exec jekyll build`

## Per pubblicare

Il sito è un archivio del vecchio sito del DVRI, pubblicato su
https://dvri.rubynetti.it (il DVRI ha ora un sito nuovo su
distrettovenezianoricerca.it). È servito da `nginx_web` sul server Finlandia,
dalla cartella `/var/www/static-sites/dvri/site`:

```sh
script/deploy
```

Lo script richiede un commit già pushato su master: costruisce il sito sul
server, con la stessa immagine Docker della GitHub Action, e lo sincronizza in
`site/`. Non costruire sul Mac e copiare `_site`: i nomi di file con accenti
cambierebbero forma Unicode e le immagini non verrebbero più trovate.

La GitHub Action verifica solo che il sito si costruisca: fino a ottobre 2026
pubblicava sul vecchio server DigitalOcean, ora dismesso. `url` in
`_config.yml` deve restare `https://dvri.rubynetti.it`, altrimenti canonical e
sitemap puntano a un altro dominio. Il file `CNAME` riguarda GitHub Pages e non
questa pubblicazione.
