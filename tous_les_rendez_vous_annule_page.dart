import 'package:flutter/material.dart';
import '_app_bar_button.dart';
import '_cancelled_appointment_card.dart';

class TousLesRendezVousAnnulePage extends StatelessWidget {
  const TousLesRendezVousAnnulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tous Les Rendez-Vous'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppBarButton(text: 'Complète'),
              AppBarButton(text: 'Prochaine'),
              AppBarButton(text: 'Annulé', isSelected: true),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          CancelledAppointmentCard(
            name: 'Dr. Olivia Turner , M.D.',
            speciality: 'Dermato - endocrinologie',
          ),
          CancelledAppointmentCard(
            name: 'Dr. Alexander Bennett , Ph.D.',
            speciality: 'Dermato - génétique',
          ),
          CancelledAppointmentCard(
            name: 'Dr. Sophia Martinez , Ph.D.',
            speciality: 'Bio - ingénierie cosmétique',
          ),
          CancelledAppointmentCard(
            name: 'Dr. Alexander Bennett , Ph.D.',
            speciality: 'Dermato - génétique',
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
