// mode_de_paiement_page.dart
import 'package:flutter/material.dart';

class ModeDePaiementPage extends StatelessWidget {
  const ModeDePaiementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mode De Paiement'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: const Text('Carte De Crédit Et De Débit'),
            trailing: TextButton(
              onPressed: () {
                // TODO: Navigate to add new card page
              },
              child: const Text(
                '+ Ajouter Une\nNouvelle Carte',
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Plus D\'options De\nPaiement',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          ListTile(
            leading: const Icon(Icons.apple),
            title: const Text('Apple Play'),
            trailing: const Icon(Icons.radio_button_unchecked),
            onTap: () {
              // TODO: Implement Apple Pay selection
            },
          ),
          ListTile(
            leading: const Icon(Icons.paypal),
            title: const Text('PayPal'),
            trailing: const Icon(Icons.radio_button_unchecked),
            onTap: () {
              // TODO: Implement PayPal selection
            },
          ),
          ListTile(
            leading: const Icon(Icons.google),
            title: const Text('Google Play'),
            trailing: const Icon(Icons.radio_button_unchecked),
            onTap: () {
              // TODO: Implement Google Play selection
            },
          ),
        ],
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
