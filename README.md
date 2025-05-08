# 🏥 Hospital Management Flutter App

Une application mobile simple développée avec Flutter permettant de gérer les informations des hôpitaux, consulter les détails, et simuler la réservation de lits disponibles.

![image](https://github.com/user-attachments/assets/97017ab5-03c6-43be-b7c9-86bc6786a854)
![image](https://github.com/user-attachments/assets/5f5cffef-aab8-44fd-8e25-6d8f335eff35)
![image](https://github.com/user-attachments/assets/104b216e-072a-42e1-a454-c4a6e55104c1)

## 🔗 Dépôt GitHub

https://github.com/Labrini-Ouiam/Hospital-Management-Flutter.git

## 📱 Fonctionnalités

- Page d'accueil avec message de bienvenue.
- Affichage d'une liste d’hôpitaux avec nom, adresse, et lits disponibles.
- Vue détaillée de chaque hôpital avec image, contact, et bouton de réservation.
- Réservation simulée d’un lit (affichage d’un `SnackBar`).
- Navigation fluide entre les écrans via `Navigator`.

## 🧠 Technologies utilisées

- Flutter (Dart)
- Material Design
- Gestion des états avec `StatelessWidget`

## 🗂️ Structure du projet

lib/
├── main.dart
├── models/
│ └── hospital.dart
├── screens/
│ ├── home_screen.dart
│ ├── hospital_list_screen.dart
│ └── hospital_detail_screen.dart
├── widgets/
│ └── hospital_card.dart
assets/
├── hospital.png
├── hospital1.png
└── hospital2.png


## ▶️ Installation et Exécution

### Prérequis

- Flutter SDK installé
- Android Studio ou VS Code recommandé

### Étapes

- git clone https://github.com/Labrini-Ouiam/Hospital-Management-Flutter.git
- cd Hospital-Management-Flutter
- flutter pub get
- flutter run

## Description des principaux fichiers

- main.dart : Point d’entrée de l’application.

- home_screen.dart : Écran d'accueil avec navigation vers la liste.

- hospital_list_screen.dart : Liste des hôpitaux avec leurs infos de base.

- hospital_detail_screen.dart : Détails d’un hôpital + bouton de réservation.

- hospital_card.dart : Widget personnalisable pour afficher un hôpital dans une carte.

- hospital.dart : Modèle de données de l’hôpital (nom, adresse, image, téléphone, etc.).

## Améliorations possibles

Connexion à une base de données (Firebase, SQLite…)

Authentification utilisateur

Internationalisation (i18n)

Gestion dynamique de réservation

Ajout d’un tableau de bord administratif

Thème clair/sombre

 ## Auteur

https://github.com/Labrini-Ouiam




