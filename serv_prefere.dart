import 'package:flutter/material.dart';

class PrefereServicesPage extends StatelessWidget {
  const PrefereServicesPage({super.key});

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
                  child: OutlinedButton(
                    onPressed:
                        null, // TODO: Implement navigate to preferred doctors
                    child: const Text(
                      'Médecins',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed:
                        null, // TODO: Implement navigate to preferred services
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Services'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildFavoriteServiceItem('Dermato-endocrinologie'),
          const SizedBox(height: 8.0),
          const TextField(
            decoration: InputDecoration(
              hintText: 'à la recherche de médecins',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8.0),
          _buildFavoriteServiceItem('Bio-ingénierie cosmétique'),
          const SizedBox(height: 8.0),
          _buildFavoriteServiceItem('Dermato-génétique'),
          const SizedBox(height: 8.0),
          _buildFavoriteServiceItem('Dermatologie solaire'),
          const SizedBox(height: 8.0),
          _buildFavoriteServiceItem('Dermato-endocrinologie'),
        ],
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

  Widget _buildFavoriteServiceItem(String serviceName) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(serviceName, style: const TextStyle(color: Colors.blue)),
          const Icon(Icons.favorite, color: Colors.pink),
        ],
      ),
    );
  }
}
