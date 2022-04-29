# firebasetutorial

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


### Steps to install FireBase in project (Pre-requisite: Firebase account, Firestore)
1. Get cloud_firestore. Offical package by firebase.
# Add in pubspec.yaml
    dependencies: cloud_firestore: ^3.1.13

2. Install FlutterFire (Firebase tool for flutter)
# Install the CLI if not already done so
    dart pub global activate flutterfire_cli
# Run the `configure` command within your project root, select a Firebase project and platforms
# 'firebase_options.dart' file will be added to your project folder
    flutterfire configure