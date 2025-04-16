import 'package:flutter/material.dart';

// Déclaration de la classe SplashScreen comme un widget sans état
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Définir la couleur de fond de l'écran (bleu)
      backgroundColor: const Color(0xFF176BFF),

      // Le contenu est centré à l'écran
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centrer verticalement

          children: [
            // Zone pour le logo
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/logo.png',
                  ), // L'image dans le dossier assets
                  fit:
                      BoxFit
                          .contain, // L'image est contenue dans la boîte sans être coupée
                ),
              ),
            ),

            const SizedBox(height: 30), // Espacement entre le logo et le texte
            // Titre principal "Santé"
            const Text(
              'Santé',
              style: TextStyle(
                fontSize: 30, // Taille du texte
                fontWeight: FontWeight.w300, // Texte fin
                color: Colors.white, // Couleur blanche
              ),
            ),

            const SizedBox(height: 100), // Grand espace avant le sous-texte
            // Sous-texte
            const Text(
              'Ravis De Votre Visite',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70, // Blanc transparent (gris clair)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 