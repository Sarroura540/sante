import 'package:flutter/material.dart';

class PrefereHommePage extends StatelessWidget {
  const PrefereHommePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homme'),
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
            icon: const Icon(Icons.star_border_outlined),
            onPressed: () {
              // TODO: Implement sort by rating
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border_outlined),
            onPressed: () {
              // TODO: Implement filter by favorites
            },
          ),
          const Icon(
            Icons.male,
            color: Colors.blue,
          ), // Assuming this indicates the 'Homme' filter
          IconButton(
            icon: const Icon(Icons.tune_outlined),
            onPressed: () {
              // TODO: Implement filter options
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 2, // Number of distinct doctors shown
        itemBuilder: (context, index) {
          final isFirst = index == 0;
          final name =
              isFirst
                  ? 'Dr. Alexander Bennett, Ph.D.'
                  : 'Dr. Michael Davidson, M.D.';
          final speciality =
              isFirst ? 'Dermato - Genetics' : 'Solar Dermatology';
          final imageUrl =
              isFirst
                  ? 'https://via.placeholder.com/80/2196F3/FFFFFF?Text=AB' // Placeholder image for Alexander Bennett
                  : 'https://via.placeholder.com/80/9C27B0/FFFFFF?Text=MD'; // Placeholder image for Michael Davidson

          return Card(
            margin: const EdgeInsets.all(8.0),
            color: Colors.blue.shade50, // Light blue background
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(speciality),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement info action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Info'),
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(Icons.calendar_today_outlined, color: Colors.blue),
                  const Icon(Icons.info_outline, color: Colors.blue),
                  const Icon(Icons.question_mark_outlined, color: Colors.blue),
                  const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.blue,
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
