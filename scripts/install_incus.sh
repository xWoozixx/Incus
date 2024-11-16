#!/bin/bash

# Script pour installer la version 6.0.0 d'Incus

# Met à jour la liste des paquets
echo "Mise à jour de la liste des paquets..."
sudo apt update

# Vérifie si Incus est déjà installé et récupère sa version
version_installee=$(incus version 2>/dev/null | grep "Client version" | awk '{print $3}')

# Version souhaitée
version_souhaitee="6.0.0"

# Compare les versions
if [ "$version_installee" == "$version_souhaitee" ]; then
  echo "La version $version_souhaitee d'Incus est déjà installée."
else
  echo "Installation de la version $version_souhaitee d'Incus..."
  sudo apt install -y incus=6.0.0-1ubuntu0.2

  # Vérifie si l'installation a réussi
  version_installee=$(incus version 2>/dev/null | grep "Client version" | awk '{print $3}')
  if [ "$version_installee" == "$version_souhaitee" ]; then
    echo "La version $version_souhaitee d'Incus a été installée avec succès."
  else
    echo "Échec de l'installation de la version $version_souhaitee d'Incus."
  fi
fi
