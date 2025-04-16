import 'package:flutter/material.dart';
import '_app_bar_button.dart';
import '_upcoming_appointment_card.dart';

class TousLesRendezVousProchainePage extends StatelessWidget {
  const TousLesRendezVousProchainePage({super.key});

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
              AppBarButton(text: 'Prochaine', isSelected: true),
              AppBarButton(text: 'Annulé'),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          UpcomingAppointmentCard(
            name: 'Dr. Olivia Turner , M.D.',
            speciality: 'Dermato - endocrinologie',
            date: 'Dimanche 12 juin',
            time: '14h30-15h00',
          ),
          UpcomingAppointmentCard(
            name: 'Dr. Alexander Bennett , Ph.D.',
            speciality: 'Dermato - génétique',
            date: 'Vendredi 20 juin',
            time: '14h30-15h00',
          ),
          UpcomingAppointmentCard(
            name: 'Dr. Sophia Martinez , Ph.D.',
            speciality: 'Bio - ingénierie cosmétique',
            date: 'Mardi 15 juin',
            time: '14h30-15h00',
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
