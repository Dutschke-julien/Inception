#!/bin/bash

# Télécharger la dernière version de mkcert
curl -s https://api.github.com/repos/FiloSottile/mkcert/releases/latest | grep browser_download_url | grep linux-amd64 | cut -d '"' -f 4 | wget -qi -

# Renommer le fichier téléchargé en "mkcert"
mv mkcert-v*-linux-amd64 mkcert

# Donner l'autorisation d'exécution au fichier
chmod a+x mkcert

# Déplacer mkcert vers /usr/local/bin/ (commenté)
# sudo mv mkcert /usr/local/bin/

# Afficher la version de mkcert (commenté)
# mkcert --version
