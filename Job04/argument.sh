#!/bin/bash

# Définir les paramètres 
nouveau_fichier="$1"
fichier_a_copier="$2"

# Ecrire dans un nouveau fichier le contenu d'un fichier existant
cat "$fichier_a_copier" > "$nouveau_fichier"
