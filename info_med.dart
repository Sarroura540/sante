import 'package:flutter/material.dart';

class DoctorInfoPage extends StatelessWidget {
  const DoctorInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informations Sur Le Médecin'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // TODO: Implement back navigation
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.sort_by_alpha),
            onPressed: () {
              // TODO: Implement sort action
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // TODO: Implement favorite action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 40.0,
                  // TODO: Replace with actual doctor image
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/100',
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Dr. Alexander Bennett, Ph.D.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text('Dermato - génétique'),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          Text('5'),
                          SizedBox(width: 8.0),
                          Icon(Icons.monetization_on_outlined),
                          Text('40'),
                        ],
                      ),
                      Text('Lun - Sam / 9h00-17h00'),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.calendar_today_outlined),
                  onPressed: () {
                    // TODO: Implement calendar action
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  onPressed: () {
                    // TODO: Implement favorite action
                  },
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Profil',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            const Divider(),
            const Text(
              'Sujet : L\'impact des déséquilibres hormonaux sur les affections cutanées, en se spécialisant dans l\'acné, l\'hirsutisme et d\'autres troubles cutanés.',
              style: TextStyle(fontSize: 14.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Cheminement De Carrière',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            const Divider(),
            // TODO: Add career details
            const SizedBox(height: 16.0),
            const Text(
              'Points Forts',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            const Divider(),
            // TODO: Add highlights
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}
