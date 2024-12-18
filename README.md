## **Pré-requis**

- Une VM Ubuntu 2404 avec accès à Internet
- Connaissances de bases de Linux

Ma config : 
- Interface réseau en mode bridge (pour avoir accès à internet)
- Seconde interface en réseau privé hote (configurée en 13.13.13.13)
- Attention, si vous etes sur un réseau avec un portail-captif la VM ne pourra pas récupérer d'IP


Vérification de la version d'Incus:
- Exécuter le script ***install_incus.sh*** afin de vérifier votre version d'Incus ou de l'installer

Configurer le réseau Incus:
Exécutez la commande :
incus network set incusbr0 ipv4.address 10.10.10.1/24
