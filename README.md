## **Consignes générales**

Le projet est à rendre dans un dépôt Gitlab.
Quand vous aurez créé votre projet ajoutez : 
- l'utilisateur @tsaquet comme mainteneur du projet
- un fichier à la racine qui comporte votre nom si votre pseudo Gitlab ne permet pas de vous identifier

Le travail est individuel !
   
## **Projet 1 : Dépôt Git pour une VM ou un Conteneur "GameShell" Opérationnel**

### **Objectifs Pédagogiques :**

- Comprendre comment automatiser le déploiement d'une VM ou d'un conteneur à l'aide d'Incus et Cloud-Init.
- Apprendre à configurer un environnement virtuel pour qu'il soit opérationnel dès sa création.
- Gérer des configurations et des scripts via un dépôt Git.

### **Tâches à Réaliser :**

1. **Création d'un dépôt Git :**
   - Le dépôt doit contenir un `cloud-init.yaml` et éventuellement des scripts supplémentaires nécessaires à l'installation et à la configuration de GameShell.

2. **Configuration Cloud-Init :**
   - Le fichier de configuration Cloud-Init doit inclure :
     - L'ajout de l'utilisateur par défaut avec les permissions adéquates.
     - L'installation des paquets nécessaires (par exemple, les dépendances de GameShell, etc.).
     - La récupération du script de lancement de GameShell par le moyen de votre choix.
     - Le démarrage du jeu au lancement du container, ou de sa sauvegarde si elle existe.

3. **Gestion du Stockage Persistant et des Volumes :**
   - Mettre en place un volume de stockage persistant pour le conteneur, afin de conserver les données en dehors du container.

4. **Documentation :**
   - Dans le README du dépôt, expliquez comment cloner le dépôt et exécuter le script pour lancer le conteneur/VM.

### **Résultats Attendus :**

- Le dépôt Git doit permettre, en clonant le dépôt et en exécutant un simple script ou commande, de déployer un conteneur ou une VM sous Incus, préconfiguré avec GameShell prêt à l'emploi.
- Vous devez démontrer vos capacité à organiser un projet de déploiement simple dans un dépôt Git.

---

## **Projet 2 : Déploiement Automatisé d'un Environnement Multi-Services avec Incus et Cloud-Init**

### **Description :**

Ce projet complexe consiste à configurer et à déployer automatiquement un environnement virtualisé complet, utilisant Incus et Cloud-Init, qui inclut plusieurs conteneurs ou machines virtuelles interdépendants pour former une application web multi-services. 

Vous devrez créer une application web simple en microservices comportant :

- Un conteneur pour un serveur web frontal (Nginx ou Apache).
- Un conteneur pour l'application web (par exemple, une application Python Flask, Node.js, PHP, peu importe prenez un projet qui existe déjà, je ne vous demande pas de coder quoi que ce soit !).
- Un conteneur pour la base de données (MySQL, PostgreSQL ou MongoDB).
- (Optionnel) Un conteneur pour le monitoring ou la journalisation (comme Prometheus, Grafana ou ELK).

L'objectif est de concevoir un environnement automatisé qui, dès son lancement, soit entièrement fonctionnel et opérationnel, sans nécessiter de configuration manuelle supplémentaire.

### **Objectifs Pédagogiques :**

- Mettre en œuvre des configurations avancées avec Incus et Cloud-Init.
- Gérer des environnements virtualisés multi-conteneurs ou multi-VM, assurant la communication entre différents services.
- Illustrer la modularité et la gestion de configurations complexes.
- Développer la capacité à concevoir et documenter un projet complexe hébergé sur un dépôt Git.

### **Tâches à Réaliser :**

1. **Création et Configuration de Conteneurs/VM Multiples :**
   - Créer au moins trois conteneurs/VM interdépendants :
     - **Conteneur 1 :** Héberge le serveur web frontal (Nginx ou Apache).
     - **Conteneur 2 :** Exécute l'application web (ex: Flask, Node.js).
     - **Conteneur 3 :** Héberge la base de données (MySQL, PostgreSQL ou MongoDB).
   - Configurer la communication réseau entre ces conteneurs, en s'assurant que l'application web puisse communiquer avec la base de données et que le serveur frontal puisse accéder à l'application web.

2. **Automatisation via Incus et Cloud-Init :**
   - Pour chaque conteneur/VM, créer un fichier de configuration Cloud-Init qui permet :
     - L'ajout d'un utilisateur administrateur.
     - L'installation des paquets nécessaires (serveur web, runtime de l'application, base de données, etc.).
     - La configuration automatique du service et de ses dépendances.
     - L'exécution de scripts pour initialiser la base de données avec des données ou configurer l'application web, si nécessaire.
   - Un script de lancement global (par exemple `deploy_environment.sh`) doit automatiser la création et le démarrage de tous les conteneurs/VM dans le bon ordre.

3. **Gestion du Stockage Persistant et des Volumes :**
   - Mettre en place un volume de stockage persistant pour le conteneur de la base de données, afin de préserver les données entre les redémarrages.
   - Explorer la gestion du stockage dans Incus pour les données persistantes (volumes, snapshots).

4. **Documentation et Scripts dans un Dépôt Git :**
   - Créer un dépôt Git contenant toutes les configurations, scripts et fichiers Cloud-Init.
   - Écrire un README détaillant comment cloner le dépôt et exécuter les scripts pour déployer l'environnement complet.
   - Fournir des scripts supplémentaires si nécessaire, tels que `init_storage.sh` pour configurer les volumes de stockage, `init_db.sh` pour initialiser la base de données, etc.

5. **Configuration de l'Application Web :**
   - L'application web peut être simple mais doit démontrer une interaction avec la base de données.
   - Le serveur frontal (Nginx ou Apache) agit comme peut agir comme reverse-proxy vers l'application web.
   - La base de données stocke des informations affichées ou manipulées par l'application web.

6. **Fonctionnalités Avancées (Optionnelles) :**
   - Utiliser un cluster Incus pour répartir les conteneurs sur plusieurs nœuds afin d'illustrer la scalabilité.
   - Mettre en place un load balancer ou un proxy inverse pour répartir la charge entre plusieurs instances de l'application web.
   - Ajouter un conteneur pour le monitoring ou la journalisation (Prometheus/Grafana ou ELK Stack) pour surveiller l'environnement.

### **Résultats Attendus :**

- Un environnement virtualisé complexe, déployable depuis un dépôt Git, qui inclut plusieurs services interdépendants (base de données, application web, serveur frontal).
- Une automatisation complète de la configuration via Cloud-Init, permettant aux conteneurs/VM d'être opérationnels immédiatement après leur création.
- Mise en place du stockage persistant pour au moins un service, démontrant la gestion des données.
- Documentation claire et scripts automatisés pour la création, le déploiement et la suppression de l'environnement.
- Vous devez démontrer leur capacité à coordonner plusieurs conteneurs/VM au sein d'un réseau virtuel, à gérer le stockage persistant et à assurer la communication inter-conteneurs/VM, tout en automatisant les configurations pour éviter les interventions manuelles.

### **Exemple de Scénario d'Environnement Complexe :**

- **Conteneur 1 (Web Frontend) :** Installez Nginx configuré comme reverse proxy et distribuant le trafic web vers l'application web.
- **Conteneur 2 (Application Web) :** Installez Python Flask (ou Node.js), déploie une simple application web qui stocke et récupère des données dans la base de données.
- **Conteneur 3 (Base de Données) :** Installez et configurez MySQL, avec un volume de stockage persistant pour les données.
- **Configuration du Réseau :** Les conteneurs partagent un réseau commun afin que l'application web puisse accéder à la base de données et que le frontend puisse accéder à l'application web.
- **Scripts et Cloud-Init :** Chacun des conteneurs est configuré automatiquement via des scripts Cloud-Init spécifiques, assurant l'installation des paquets, la configuration du service et la mise en place de la base de données avec des données initiales si nécessaire.

---

## **Résumé des Deux Projets :**

### Projet 1 : 
- **Sujet :** Dépôt Git pour un conteneur/VM "GameShell" opérationnel.
- **Niveau :** Débutant/Intermédiaire.
- **Focus :** Automatisation simple avec Incus et Cloud-Init pour déployer un conteneur single-service.

### Projet 2 : 
- **Sujet :** Déploiement automatisé d'un environnement multi-services (application web, base de données, serveur frontal) avec Incus et Cloud-Init.
- **Niveau :** Avancé.
- **Focus :** Création de plusieurs conteneurs/VM interdépendants, configuration automatique via Cloud-Init, gestion du stockage persistant et documentation complète dans un dépôt Git.

---

# **Barèmes de Notation Proposés**

## **Projet 1 : Dépôt Git pour un Conteneur/VM "GameShell" Opérationnel**

**Objectif :** Créer un dépôt Git contenant tout le nécessaire pour démarrer automatiquement un conteneur ou une VM Incus incluant GameShell, opérationnelle dès le lancement.

### **Critères de Notation et Pondérations :**

1. **Structure et Clarté du Dépôt Git (20%)**
   - Organisation du dépôt (répertoires, fichiers, scripts).
   - Présence d'un README clair, expliquant la marche à suivre pour déployer le conteneur/VM.
   - Utilisation appropriée de `.gitignore` et autres bonnes pratiques Git.

2. **Configuration Cloud-Init (30%)**
   - Qualité du fichier `cloud-init.yaml` ou équivalent.
   - Exactitude de la configuration pour ajouter l'utilisateur, installer les paquets nécessaires et Gameshell.
   - Cohérence et lisibilité du code Cloud-Init.

3. **Automatisation du Déploiement (20%)**
   - Existence et fonctionnement d'un script de lancement (ex. `start.sh`) pour automatiser la création et le démarrage du conteneur/VM.
   - Capacité du script à récupérer automatiquement les configurations Cloud-Init et à lancer l'instance Incus.
   - Gestion correcte des retours d'erreur et de la logique d'installation.

4. **Fonctionnalité du Conteneur/VM (20%)**
   - Vérification que le conteneur/VM démarre correctement.
   - GameShell est opérationnel dès le lancement et accessible dans l'environnement.

5. **Respect des Consignes et Qualité Générale (10%)**
   - Respect du format et des instructions fournies.
   - Qualité générale du projet (lisibilité du code, commentaires, cohérence du nommage).
   - Toute initiative supplémentaire.

---

## **Projet 2 : Déploiement Automatisé d'un Environnement Multi-Services avec Incus et Cloud-Init**

**Objectif :** Configurer et déployer automatiquement un environnement virtualisé complet et multi-services (application web, base de données, serveur web frontal) en utilisant Incus et Cloud-Init, le tout dans un projet Git structuré.

### **Critères de Notation et Pondérations :**

1. **Structure et Clarté du Dépôt Git (15%)**
   - Organisation du dépôt (répertoires, fichiers, scripts).
   - Présence d'une documentation claire (README) détaillant la procédure de déploiement de l'environnement.
   - Utilisation appropriée de Git (commits significatifs, `.gitignore`, etc.).

2. **Configuration Cloud-Init pour chaque Service (25%)**
   - Qualité et exhaustivité des fichiers de configuration Cloud-Init pour l'ensemble des conteneurs/VM.
   - Exactitude de la configuration pour installer et configurer automatiquement chaque service (serveur web, application web, base de données).
   - Cohérence, lisibilité et modularité des configurations Cloud-Init.

3. **Déploiement et Fonctionnalité de l'Environnement Multi-Services (30%)**
   - Création et démarrage automatisé des conteneurs/VM pour chaque service.
   - Vérification que l'application web, le serveur web frontal et la base de données communiquent correctement.
   - Les services sont opérationnels sans intervention manuelle supplémentaire.
   - Le script de déploiement global (ex. `deploy_environment.sh`) fonctionne correctement et dans le bon ordre.

4. **Gestion du Stockage Persistant et Volumes (10%)**
   - Mise en place d'un volume de stockage persistant pour la base de données ou tout autre service nécessitant la persistance des données.
   - Bonne gestion des volumes, y compris la création automatique via Incus si nécessaire.
   - Vérification que les données sont conservées entre les redémarrages.

5. **Réseau et Communication Inter-Services (10%)**
   - Configuration réseau appropriée pour permettre la communication entre les différents conteneurs/VM (application web ↔ base de données, serveur frontal ↔ application web).
   - Utilisation de dispositifs réseaux Incus (bridge, NAT, etc.) de manière cohérente.
   - Vérification que chaque service est accessible (par ex. l'application web accessible via le serveur frontal).

6. **Respect des Consignes, Documentation, et Qualité Générale (10%)**
   - Respect du format et des instructions fournies pour le projet.
   - Qualité générale du code et des scripts, y compris les commentaires, la lisibilité et la logique.
   - Toute fonctionnalité supplémentaire optionnelle mise en place (cluster Incus, load balancing, monitoring) sera valorisée.
