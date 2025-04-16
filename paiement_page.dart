// paiement_page.dart
import 'package:flutter/material.dart';
import 'paiement_reussi_page.dart';

class PaiementPage extends StatelessWidget {
  const PaiementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paiement'),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '\$ 100.00',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: const [
                CircleAvatar(
                  radius: 30.0,
                  // TODO: Replace with actual doctor image
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/60',
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Text(
                    'Dr. Olivia Turner , M.D.\nDermato - endocrinologie',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.star, color: Colors.amber, size: 16.0),
                Text('5'),
              ],
            ),
            const SizedBox(height: 16.0),
            const Divider(),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Date / Heure'),
                Text('Mois 24 , Année / 10h00'),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('Durée'), Text('30 Minutes')],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Réservation pour'),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Une Autre\nPersonne',
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Divider(),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('Montant'), Text('\$ 100.00')],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('Durée'), Text('30 Minutes')],
            ),
            const SizedBox(height: 8.0),
            const Divider(),
            const SizedBox(height: 16.0),
            const Text(
              'Mode de paiement',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Carte'),
                Text('Changer', style: TextStyle(color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 32.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement payment processing logic
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaiementReussiPage(),
                    ),
                  );
                },
                child: const Text('Payer Maintenant'),
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
