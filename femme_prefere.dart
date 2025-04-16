import 'package:flutter/material.dart';

class PrefereFemmePage extends StatelessWidget {
  const PrefereFemmePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Femme'),
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
      ),
      body: ListView.builder(
        itemCount: 2, // Nombre d'éléments visibles
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
                  IconButton(
                    icon: const Icon(Icons.info_outline),
                    onPressed: () {
                      // TODO: Implement info action
                    },
                  ),
                  const Icon(Icons.email_outlined),
                  const Icon(Icons.call_outlined),
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
