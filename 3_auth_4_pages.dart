import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Santé Auth App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // Logo + nom de l'app
          const Icon(Icons.local_hospital, size: 80, color: Colors.blue),
          const SizedBox(height: 10),
          const Text(
            'Santé',
            style: TextStyle(fontSize: 32, color: Colors.blue),
          ),
          const Text(
            'Ravis De Votre Visite',
            style: TextStyle(color: Colors.blueAccent),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Prenez rendez-vous en ligne avec un médecin et payez en toute sécurité depuis votre smartphone.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54),
            ),
          ),
          const Spacer(),
          // Boutons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginPage()),
                      ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text('Se Connecter'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const RegisterPage()),
                      ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade100,
                    foregroundColor: Colors.blue,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text("S'inscrire"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Se Connecter"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text(
              'Bienvenue',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('E-mail ou numéro de portable'),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const Text('Mot De Passe'),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const DefinePasswordPage(),
                      ),
                    ),
                child: const Text('Mot de passe oublié'),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Se Connecter'),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.g_mobiledata, size: 40),
                SizedBox(width: 10),
                Icon(Icons.facebook, size: 30),
                SizedBox(width: 10),
                Icon(Icons.fingerprint, size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nouveau Compte"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nom et prénom',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Mot De Passe',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Numéro de portable',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Date de naissance',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Se Connecter'),
            ),
          ],
        ),
      ),
    );
  }
}

class DefinePasswordPage extends StatelessWidget {
  const DefinePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Définir Le Mot De Passe"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mot De Passe',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirmez Le Mot De Passe',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Créer Un Nouveau Mot De Passe'),
            ),
          ],
        ),
      ),
    );
  }
}
