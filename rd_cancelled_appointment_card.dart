import 'package:flutter/material.dart';

class CancelledAppointmentCard extends StatelessWidget {
  final String name;
  final String speciality;

  const CancelledAppointmentCard({
    required this.name,
    required this.speciality,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 30.0,
              // TODO: Replace with actual doctor image
              backgroundImage: NetworkImage('https://via.placeholder.com/80'),
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
            const Icon(Icons.close, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
