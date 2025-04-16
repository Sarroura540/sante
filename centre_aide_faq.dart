import 'package:flutter/material.dart';

class CentreAideFAQPage extends StatelessWidget {
  const CentreAideFAQPage({super.key});

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
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('FAQ'),
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      // TODO: Navigate to contact us page
                    },
                    child: const Text(
                      'Contactez-Nous',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Sujet\npopulaire',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            _buildFAQItem('Général'),
            _buildFAQItem('Services'),
            const SizedBox(height: 16.0),
            _buildExpandableFAQItem('..................'),
            _buildExpandableFAQItem('..................'),
            _buildExpandableFAQItem('..................'),
            _buildExpandableFAQItem('..................'),
            _buildExpandableFAQItem('..................'),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQItem(String title) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade200,
        foregroundColor: Colors.black87,
        padding: const EdgeInsets.symmetric(vertical: 12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(title)],
      ),
    );
  }

  Widget _buildExpandableFAQItem(String title) {
    return ExpansionTile(
      title: Text(title),
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Réponse à la question...'),
        ),
      ],
    );
  }
}
