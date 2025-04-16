import 'package:flutter/material.dart';

class ModifierProfilPage extends StatelessWidget {
  const ModifierProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // TODO: Implement back navigation
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.save_outlined),
            onPressed: () {
              // TODO: Implement save profile changes
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 60.0,
                // TODO: Replace with actual user profile image
                backgroundImage: NetworkImage(
                  'https://via.placeholder.com/120',
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Nom Complet',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'Utilisateur'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Numéro De Téléphone',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(hintText: '+216 999999999'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'E - Mail',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'utilisateur@gmail.com'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Date De Naissance',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'DD / MM / YYY'),
            ),
            const SizedBox(height: 32.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement update profile logic
                },
                child: const Text('METTRE À JOUR LE PROFIL'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}
