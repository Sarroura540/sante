import 'package:flutter/material.dart';

class RevoirPage extends StatelessWidget {
  const RevoirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Revoir'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Il est important de prendre soin du patient , le patient sera suivi par le patient , mais en même temps il arrivera qu\'il y ait beaucoup de travail et de douleur .',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0),
            ),
            const SizedBox(height: 24.0),
            const CircleAvatar(
              radius: 50.0,
              // TODO: Replace with actual doctor image
              backgroundImage: NetworkImage('https://via.placeholder.com/100'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Dr. Olivia Turner , M.D.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            const Text(
              'Dermato - endocrinologie',
              style: TextStyle(fontSize: 12.0),
            ),
            const SizedBox(height: 8.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.amber, size: 16.0),
                Icon(Icons.star, color: Colors.amber, size: 16.0),
                Icon(Icons.star, color: Colors.amber, size: 16.0),
                Icon(Icons.star, color: Colors.amber, size: 16.0),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.amber,
                  size: 16.0,
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Entrez Votre Raison Ici ...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement add review logic
                  Navigator.pop(
                    context,
                  ); // Go back after attempting to add review
                },
                child: const Text('Ajouter Un Avis'),
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
