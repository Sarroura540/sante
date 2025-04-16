import 'package:flutter/material.dart';

class SeDeconnecterPage extends StatelessWidget {
  const SeDeconnecterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Profil'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60.0,
              // TODO: Replace with actual user profile image
              backgroundImage: NetworkImage('https://via.placeholder.com/120'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Utilisateur',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  const Text(
                    'Déconnexion',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Étes - vous sûr de vouloir vous\ndéconnecter ?',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Go back to profile
                        },
                        child: const Text(
                          'Annuler',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: Implement logout functionality
                        },
                        child: const Text('Oui . Déconnectez -Vous'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
