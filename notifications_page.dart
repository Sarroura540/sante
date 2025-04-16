import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              // TODO: Implement mark all as read
            },
            child: const Text(
              'Marquer tout',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Aujourd\'hui',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          _NotificationItem(
            icon: Icons.calendar_today_outlined,
            title: 'Rendez - Vous Programmé',
            time: '2J',
          ),
          _NotificationItem(
            icon: Icons.calendar_today_outlined,
            title: 'Changement Programmé',
            time: '2J',
          ),
          _NotificationItem(
            icon: Icons.notes_outlined,
            title: 'Notes Médicales',
            time: '3J',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text('Hier', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          _NotificationItem(
            icon: Icons.calendar_today_outlined,
            title: 'Rendez - Vous Programmé',
            time: '1J',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              '15 Avril',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          _NotificationItem(
            icon: Icons.medical_information_outlined,
            title: 'Mise À Jour Des\nAntécédents Médicaux',
            time: '5J',
          ),
        ],
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

class _NotificationItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String time;

  const _NotificationItem({
    required this.icon,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.blue),
            const SizedBox(width: 16.0),
            Expanded(child: Text(title)),
            Text(time, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
