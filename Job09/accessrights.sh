#!/bin/bash

csv_file="/home/vanny/Documents/shell-exe/Job09/Shell_Userlist.csv"

# Lire le fichier CSV

while IFS=',' read -r Id Prenom Nom Mdp Role; do
echo "Id : $Id"
echo "Nom complet: $Prenom $Nom"
echo "Mdp: $Mdp"
echo "Role: $Role"

# Vérifier si l'utilisateur à déjà 
nom_utilisateur="${Prenom,,}${Nom}"

if id "$nom_utilisateur" &>/dev/null; then
echo "L'utilisateur $nom_utilisateur existe déjà"

else

#Crypter les mots de passe et créer des utilisateurs
Mdpc=$(mkpasswd -m sha-512 "$Mdp")
sudo useradd -m -p "$Mdpc" "$nom_utilisateur"

#Supprimer l'utilisateur Nom Prenom
sudo rm -rf /home/prenomNom

# Donner les permissions de super utilisateur aux utilisateurs Admin
	if [$Role="Admin"];then
	sudo usermod -aG sudo "$utilisateur" 
	echo "L'utilisateur $nom_utilisateur est un super utilisateur"
sudo userdel prenomNom

	fi
else
 fi
echo "erreur pour la création de  l'utilisateur $nom_utilisateur"
fi


done < "$csv_file"

