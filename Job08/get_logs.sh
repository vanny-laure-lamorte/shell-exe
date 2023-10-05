#!/bin/bash

#Pour extraire le nombre de connexions d'un utilisateur 
utilisateur="$vanny"
nombre_de_connexion=$(last | grep "$utilisateur" | wc -l)

#Répertoire Backup
repertoire_backup="/home/vanny/Documents/shell.exe/Job08/Backup"

#Date sous format jj-mm-aaaa-HH:MM
format_date=$(date "+%d-%m-%Y-%H:%M")
 
#Affichage du nom du fichier Backup
sortie="$nombre_de_connexion-$format_date"

#Contenu écrit dans le fichier Backup
echo "Nombre de connexion : $nombre_de_connexion - Date : $format_date" > $sortie

#Archiver avec tar
tar -cvf $repertoire_backup/"$sortie.tar" $sortie

#Affichage dans la terminale
echo "L'utilisateur s'est connecté(e) $nombre_de_connexion fois, le $format_date"
