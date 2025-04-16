import 'package:flutter/material.dart';

class CentreAideContactezNousPage extends StatelessWidget {
  const CentreAideContactezNousPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Centre D\'aide'),
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
              'Comment Pouvons-\nNous Vous Aider ?',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      // TODO: Navigate to FAQ page
                    },
                    child: const Text(
                      'FAQ',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Contactez-Nous'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            _buildContactOption(Icons.headphones, 'Service Client'),
            _buildContactOption(Icons.language, 'Site Web'),
            _buildContactOption(Icons.whatsapp, 'Whatsapp'),
            _buildContactOption(Icons.facebook, 'Facebook'),
            _buildContactOption(Icons.instagram, 'Instagram'),
          ],
        ),
      ),
    );
  }

  Widget _buildContactOption(IconData icon, String title) {
    return InkWell(
      onTap: () {
        // TODO: Implement contact method
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.blue),
            const SizedBox(width: 16.0),
            Expanded(child: Text(title)),
            const Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
