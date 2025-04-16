import 'package:flutter/material.dart';

class UpcomingAppointmentCard extends StatelessWidget {
  final String name;
  final String speciality;
  final String date;
  final String time;

  const UpcomingAppointmentCard({
    required this.name,
    required this.speciality,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(speciality),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      date,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(time),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement details action
                  },
                  child: const Text('Details'),
                ),
                const Icon(
                  Icons.notifications_off_outlined,
                  color: Colors.grey,
                ),
                const Icon(Icons.close, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
