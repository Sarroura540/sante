import 'package:flutter/material.dart';

class MedecinsListPage extends StatelessWidget {
  const MedecinsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Médecins'),
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
              // TODO: Implement sort by A-Z
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // TODO: Implement filter by favorites
            },
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
                          'Dr. Alexander Bennett, Ph.D.',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Dermato - génétique'),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.info_outline),
                    onPressed: () {
                      // TODO: Navigate to doctor info page
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.email_outlined),
                    onPressed: () {
                      // TODO: Implement email action
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.call_outlined),
                    onPressed: () {
                      // TODO: Implement call action
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
