// paiement_reussi_page.dart
import 'package:flutter/material.dart';

class PaiementReussiPage extends StatelessWidget {
  const PaiementReussiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 100.0,
              ),
              const SizedBox(height: 32.0),
              const Text(
                'Félicitations',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Le paiement a été effectué\navec succès',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 32.0),
              const Text(
                'Vous avez pris rendez - vous avec',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Dr. Olivia Turner , M.D.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text('Mois 24 , Année / 10h00'),
            ],
          ),
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
