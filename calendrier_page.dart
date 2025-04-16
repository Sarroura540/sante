import 'package:flutter/material.dart';

class CalendrierPage extends StatelessWidget {
  const CalendrierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendrier'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Icon(Icons.calendar_today_outlined),
          SizedBox(width: 16.0),
          Icon(Icons.tune_outlined),
          SizedBox(width: 8.0),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {},
                ),
                const Text(
                  'Mois',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
              ),
              itemCount: 7 * 5, // Approximate number of days
              itemBuilder: (context, index) {
                final day = index + 22; // Starting from the visible month
                final isSelected = day == 25; // Highlighted day
                return Center(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.blue : null,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '$day',
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Temps disponible',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: const [
                _AvailableTimeChip(time: '9H30'),
                _AvailableTimeChip(time: '10H00'),
                _AvailableTimeChip(time: '10H30'),
                _AvailableTimeChip(time: '11H00'),
                _AvailableTimeChip(time: '11H30'),
                _AvailableTimeChip(time: '12H00'),
                _AvailableTimeChip(time: '12H30'),
                _AvailableTimeChip(time: '1H00'),
                _AvailableTimeChip(time: '1H30'),
                _AvailableTimeChip(time: '2H00'),
                _AvailableTimeChip(time: '2H30'),
                _AvailableTimeChip(time: '3H00'),
                _AvailableTimeChip(time: '3H30'),
                _AvailableTimeChip(time: '4H00'),
              ],
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Détails du patient',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Row(
              children: [
                Text('Moi'),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: null,
                  child: Text(
                    '+ Autre Personne',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nom et prénom',
                hintText: 'utilisateur',
              ),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Age', hintText: '30'),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Genre',
                hintText: 'Femelle',
              ),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Décrivez votre problème',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrez Votre Problème Ici ...',
              ),
            ),
            const SizedBox(height: 24.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement booking logic
                },
                child: const Text('Réserver Maintenant'),
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

class _AvailableTimeChip extends StatelessWidget {
  final String time;

  const _AvailableTimeChip({required this.time});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(time, style: const TextStyle(color: Colors.blue)),
      backgroundColor: Colors.blue.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    );
  }
}
