import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Import de l'écran de lancement

void main() {
  runApp(const MyApp()); // Démarrer l'application
}

// Classe principale de l'application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Supprimer le bandeau "debug"
      home: SplashScreen(), // L'écran affiché au démarrage est la SplashScreen
    );
  }
}
