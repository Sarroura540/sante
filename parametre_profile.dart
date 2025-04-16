import 'package:flutter/material.dart';

class ParametresPage extends StatelessWidget {
  const ParametresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // TODO: Implement back navigation
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSettingsListItem(
              Icons.notifications_outlined,
              'Paramètre De Notification',
              () {
                // TODO: Navigate to notification settings
              },
            ),
            _buildSettingsListItem(
              Icons.lock_outline,
              'Gestionnaire De Mots De Passe',
              () {
                // TODO: Navigate to password manager
              },
            ),
            _buildSettingsListItem(
              Icons.person_remove_outlined,
              'Supprimer Le Compte',
              () {
                // TODO: Implement delete account functionality
              },
            ),
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

  Widget _buildSettingsListItem(
    IconData icon,
    String text,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
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
