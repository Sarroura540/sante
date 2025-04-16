import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nouveau Compte"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // Nom et prénom
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nom et prénom',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Mot de passe
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mot De Passe',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            const SizedBox(height: 20),

            // Email
            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Numéro de portable
            const TextField(
              decoration: InputDecoration(
                labelText: 'Numéro de portable',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Date de naissance
            const TextField(
              decoration: InputDecoration(
                labelText: 'Date De Naissance',
                hintText: 'JJ / MM / AAAA',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            const Text(
              "En continuant, vous acceptez les Conditions d'utilisation et la politique de confidentialité.",
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            // Bouton s'inscrire
            ElevatedButton(
              onPressed: () {
                // Action d'inscription
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text('Se Connecter'),
            ),

            const SizedBox(height: 15),

            Center(child: Text("ou se connecter avec")),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.g_mobiledata, size: 40),
                SizedBox(width: 10),
                Icon(Icons.facebook, size: 30),
                SizedBox(width: 10),
                Icon(Icons.fingerprint, size: 30),
              ],
            ),

            const SizedBox(height: 15),

            Center(
              child: TextButton(
                onPressed: () {
                  // Aller à la connexion
                },
                child: const Text("Vous avez déjà un compte ? Connectez-vous"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
