#!/bin/bash

# Définir les paramètres des nombres à additionner 
nombre1=$1
nombre2=$2

#Effectuer l'addition
result=$(( nombre1 + nombre2 ))

#Afficher le resultat
echo "Result : $result"
