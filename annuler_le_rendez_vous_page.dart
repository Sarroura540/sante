import 'package:flutter/material.dart';

class AnnulerLeRendezVousPage extends StatefulWidget {
  const AnnulerLeRendezVousPage({super.key});

  @override
  State<AnnulerLeRendezVousPage> createState() =>
      _AnnulerLeRendezVousPageState();
}

class _AnnulerLeRendezVousPageState extends State<AnnulerLeRendezVousPage> {
  String? _reason;
  TextEditingController _reasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Annuler le rendez - vous'),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Il est important de prendre soin du patient , le patient sera suivi par le patient , mais en même temps il arrivera qu\'il y ait beaucoup de travail et de douleur .',
              style: TextStyle(fontSize: 14.0),
            ),
            const SizedBox(height: 16.0),
            RadioListTile<String>(
              title: const Text('Reprogrammation'),
              value: 'Reprogrammation',
              groupValue: _reason,
              onChanged: (String? value) {
                setState(() {
                  _reason = value;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('Conditions Météorologiques'),
              value: 'Conditions Météorologiques',
              groupValue: _reason,
              onChanged: (String? value) {
                setState(() {
                  _reason = value;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('Travail Inattendu'),
              value: 'Travail Inattendu',
              groupValue: _reason,
              onChanged: (String? value) {
                setState(() {
                  _reason = value;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('Autres'),
              value: 'Autres',
              groupValue: _reason,
              onChanged: (String? value) {
                setState(() {
                  _reason = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Il est important de prendre soin du patient , le patient sera suivi par le patient , mais en même temps il arrivera qu\'il y ait beaucoup de travail et de douleur .',
              style: TextStyle(fontSize: 14.0),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _reasonController,
              maxLines: 2,
              decoration: const InputDecoration(
                labelText: 'Entrez Votre Raison Ici ...',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                if (_reason == 'Autres') {
                  setState(() {
                    _reason = value;
                  });
                }
              },
            ),
            const SizedBox(height: 32.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement cancel appointment logic with the reason
                  print('Reason for cancellation: $_reason');
                  Navigator.pop(context); // Go back after attempting to cancel
                },
                child: const Text('Annuler le rendez - vous'),
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
