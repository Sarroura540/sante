import 'package:flutter/material.dart';

class PolitiqueConfidentialitePage extends StatelessWidget {
  const PolitiqueConfidentialitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Politique De Confidentialité'),
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
          children: const <Widget>[
            Text(
              'Dernière Mise À Jour : 14/08/2024',
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
            SizedBox(height: 16.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 24.0),
            Text(
              'Termes Et Conditions',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              '2. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              '3. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.',
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              '4. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.',
              style: TextStyle(fontSize: 14.0),
            ),
            // Add more terms and conditions as needed
          ],
        ),
      ),
    );
  }
}
