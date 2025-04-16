import 'package:flutter/material.dart';

class MonProfilPage extends StatelessWidget {
  const MonProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Profil'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // TODO: Implement back navigation
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60.0,
              // TODO: Replace with actual user profile image
              backgroundImage: NetworkImage('https://via.placeholder.com/120'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Utilisateur',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24.0),
            _buildProfileListItem(Icons.person_outline, 'Profil', () {
              // TODO: Navigate to profile details
            }),
            _buildProfileListItem(Icons.favorite_border, 'Préféré', () {
              // TODO: Navigate to favorites
            }),
            _buildProfileListItem(
              Icons.payment_outlined,
              'Mode De Paiement',
              () {
                // TODO: Navigate to payment methods
              },
            ),
            _buildProfileListItem(
              Icons.lock_outline,
              'Politique De Confidentialité',
              () {
                // TODO: Navigate to privacy policy
              },
            ),
            _buildProfileListItem(Icons.settings_outlined, 'Paramètres', () {
              // TODO: Navigate to settings
            }),
            _buildProfileListItem(Icons.help_outline, 'Aide', () {
              // TODO: Navigate to help
            }),
            _buildProfileListItem(Icons.logout, 'Déconnexion', () {
              // TODO: Implement logout functionality
            }),
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

  Widget _buildProfileListItem(IconData icon, String text, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.blue),
            const SizedBox(width: 16.0),
            Expanded(child: Text(text, style: const TextStyle(fontSize: 16.0))),
            const Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
