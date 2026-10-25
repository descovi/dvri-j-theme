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
bundle exec jekyll build
rsync -a --delete _site/ dev@finlandia.rubynetti.it:/var/www/static-sites/dvri/site/
```

La GitHub Action verifica solo che il sito si costruisca: fino a ottobre 2026
pubblicava sul vecchio server DigitalOcean, ora dismesso. `url` in
`_config.yml` deve restare `https://dvri.rubynetti.it`, altrimenti canonical e
sitemap puntano a un altro dominio. Il file `CNAME` riguarda GitHub Pages e non
questa pubblicazione.
