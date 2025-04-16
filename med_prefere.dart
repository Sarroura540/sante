import 'package:flutter/material.dart';

class PrefereMedecinsPage extends StatelessWidget {
  const PrefereMedecinsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Préféré'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // TODO: Implement back navigation
          },
        ),
        actions: [
          const TextButton(
            onPressed: null, // TODO: Implement sort options
            child: Text('Trier Par', style: TextStyle(color: Colors.grey)),
          ),
          TextButton(
            onPressed: () {
              // TODO: Implement sort by A-Z
            },
            child: const Text('A - Z'),
          ),
          IconButton(
            icon: const Icon(Icons.tune),
            onPressed: () {
              // TODO: Implement filter options
            },
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed:
                        null, // TODO: Implement navigate to preferred doctors
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Médecins'),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: OutlinedButton(
                    onPressed:
                        null, // TODO: Implement navigate to preferred services
                    child: const Text(
                      'Services',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 4, // Nombre d'éléments visibles
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30.0,
                    // TODO: Replace with actual doctor image
                    backgroundImage: NetworkImage(
                      'https://via.placeholder.com/80',
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Dr. Olivia Turner, M.D.',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Dermato - Endocrinology'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement take appointment action
                    },
                    child: const Text('Prendre rendez-vous'),
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(Icons.favorite, color: Colors.pink),
                ],
              ),
            ),
          );
        },
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
