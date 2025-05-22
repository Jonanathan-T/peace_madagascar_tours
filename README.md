# Peace Madagascar Tours

Une application mobile et web développée avec Flutter pour l'agence de voyage Peace Madagascar Tours. Elle permet aux utilisateurs de découvrir des circuits touristiques, de visualiser une galerie de photos et de contacter l'agence.

## Fonctionnalités

-   **Accueil** : Présentation de l'agence et des offres.
-   **À Propos** : Informations détaillées sur Peace Madagascar Tours, sa mission et ses valeurs.
-   **Circuits Touristiques** : Catalogue des circuits proposés, avec descriptions, itinéraires et tarifs.
-   **Galerie Photos** : Collection d'images des destinations et des expériences de voyage.
-   **Contact** : Formulaire permettant aux utilisateurs de poser des questions ou de demander des devis.
-   **Cartes Interactives** : Intégration de cartes pour visualiser les itinéraires des circuits et les points d'intérêt.

## Technologies Utilisées

-   **Flutter (Dart)** : Framework UI multiplateforme pour la création d'applications compilées nativement pour mobile, web et bureau à partir d'une seule base de code.
-   **Firebase** : Plateforme de développement d'applications de Google fournissant des services backend, tels que l'hébergement (Firebase Hosting), les bases de données, l'authentification, etc.

## Structure du Projet

Le projet suit une architecture organisée pour faciliter la maintenabilité et l'évolutivité :

-   `lib/` : Contient tout le code source Dart de l'application.
    -   `lib/main.dart` : Point d'entrée principal de l'application.
    -   `lib/core/` : Comprend les éléments transversaux tels que la configuration, les routes, les thèmes et les utilitaires.
    -   `lib/features/` : Organise l'application par fonctionnalités (par exemple, `home`, `circuits`, `galerie`). Chaque fonctionnalité contient généralement ses propres sous-dossiers pour la logique (domaine), la présentation (UI) et les données.
    -   `lib/shared/` : Widgets et logiques partagés entre plusieurs fonctionnalités.
-   `assets/` : Regroupe les ressources statiques comme les images, les logos et les polices.
-   `android/`, `ios/`, `web/`, `linux/`, `macos/`, `windows/` : Contiennent les fichiers spécifiques à chaque plateforme pour la configuration et la compilation.
-   `pubspec.yaml` : Fichier de configuration du projet Flutter, listant les dépendances et les assets.
-   `firebase.json` : Fichier de configuration pour les services Firebase, notamment l'hébergement.

## Démarrage Rapide

Pour lancer ce projet localement, suivez ces étapes :

1.  **Clôner le dépôt :**
    ```bash
    git clone https://github.com/votre-utilisateur/peace_madagascar_tours.git
    cd peace_madagascar_tours
    ```
2.  **Installer les dépendances :**
    ```bash
    flutter pub get
    ```
3.  **Configurer Firebase :**
    Assurez-vous d'avoir un projet Firebase configuré et les fichiers de configuration nécessaires (par exemple, `google-services.json` pour Android, `GoogleService-Info.plist` pour iOS) correctement placés si vous souhaitez utiliser les fonctionnalités Firebase. Consultez la documentation de FlutterFire pour plus de détails.

4.  **Lancer l'application :**
    ```bash
    flutter run
    ```
    Choisissez l'appareil ou l'émulateur sur lequel vous souhaitez exécuter l'application.

---

N'hésitez pas à contribuer à ce projet ou à signaler des problèmes !
