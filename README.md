Comment fonctionne Docker et Docker Compose ?

Docker : Docker est une plateforme de conteneurisation qui permet d'empaqueter une application et ses dépendances dans un conteneur léger. Un conteneur Docker inclut tout ce dont une application a besoin pour s'exécuter de manière isolée.
Docker Compose : Docker Compose est un outil qui simplifie le déploiement d'applications multi-conteneurs. Il permet de décrire les services, les réseaux et les volumes dans un fichier docker-compose.yml et de les exécuter en une seule commande.
Différence entre une image Docker avec Compose et sans Compose :

Une image Docker est un package exécutable qui inclut le code de l'application, ses dépendances, le système d'exploitation, etc.
Avec Compose, vous décrivez plusieurs services, réseaux et volumes dans un fichier pour déployer des applications complexes. Compose utilise des images Docker, mais il ajoute une couche d'orchestration.
Avantage de Docker par rapport à une VM :

Efficacité : Les conteneurs partagent le même noyau du système d'exploitation, ce qui les rend plus légers et plus rapides à démarrer par rapport aux machines virtuelles.
Isolation : Les conteneurs fournissent une isolation efficace entre les applications, mais utilisent moins de ressources que des machines virtuelles.
Explication de Docker Network :

Docker Network : Docker Network permet de connecter des conteneurs pour qu'ils puissent communiquer. Il peut créer des réseaux privés pour isoler des groupes de conteneurs ou utiliser des réseaux existants. Cela facilite la communication entre les services dans un environnement conteneurisé.
Explication du certificat TLS v1.2/v1.3 :

TLS (Transport Layer Security) : TLS est un protocole de sécurité qui assure une communication sécurisée sur un réseau. Les versions 1.2 et 1.3 sont des versions du protocole. La version 1.3 est plus récente et apporte des améliorations en termes de sécurité et de performances par rapport à la version 1.2.
Explication de la connexion à la base de données MariaDB :

Pour se connecter à la base de données MariaDB, vous pouvez utiliser la commande mysql depuis un terminal ou un script.

mysql -h adresse_ip_mariadb -u utilisateur -p
#changer adresse_ip par l'adresse ip du serveur de mariadb et utilisateur par le user noter au prealable.
#le mot de passe sera demandé dans le terminal.
