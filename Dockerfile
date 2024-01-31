# Usa un'immagine base di Ruby 2.2
FROM ruby:2.7

# Opzionalmente, imposta una directory di lavoro
WORKDIR /web

# Copia i file del tuo progetto Jekyll nella directory di lavoro
COPY . .

RUN gem install bundler -v 2.4.22

RUN bundle install

# Costruisci il sito con Jekyll
# RUN jekyll build

# Espone la porta 4000, che è la porta predefinita su cui Jekyll serve il sito
EXPOSE 4000

# Comando per eseguire il server Jekyll
CMD ["jekyll", "build"]
