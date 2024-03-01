# ELK Stack Repository

Ce référentiel contient les fichiers nécessaires pour configurer et exécuter l'ELK Stack (Elasticsearch, Logstash, Kibana) à l'aide de Docker.
## 0. Prérequis
Assurez-vous d'avoir **Docker** et **Docker Compose** installés sur votre machine.
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## 1. Installation
Les instructions ci-dessous sont vabables sur `Windows` et `MacOS`.

### 1.1 Clonage du référentiel
```bash
git clone https://github.com/moiseberthe/sise-elk.git
cd sise-elk
```

### 1.2 Construction des conteneurs Docker
```bash
docker compose build
```
Cette commande utilise le fichier `docker-compose.yml` pour construire les images Docker nécessaires.


### 1.3 Démarrage des conteneurs Docker
```bash
docker compose up
```
Cette commande lance les conteneurs Docker conformément à la configuration définie dans le fichier `docker-compose.yml`.
Les services seront accessibles aux adresses suivantes :

- Elasticsearch: http://localhost:9200
- Kibana: http://localhost:5601


Votre environnement est prêt.


## 2. Autres instructions

### 2.1 Accès au shell du conteneur Kibana

```bash
docker exec -it  sise-kibana bash
```
Cette commande vous permet d'accéder à la ligne de commande du conteneur Kibana.

### 2.2 Ajout du chemin de Logstash à la variable d'environnement PATH
```bash
export PATH="/usr/share/logstash/bin:$PATH"
```
Cette commande ajoute le répertoire bin de Logstash au chemin d'accès de votre terminal, permettant ainsi d'exécuter la commande logstash de n'importe quel répertoire.

### 2.3 Exécution de Logstash
```bash
logstash -f conf.d/sise.conf
```