import 'package:flutter/material.dart';
import '_app_bar_button.dart';
import '_doctor_appointment_card.dart';

class TousLesRendezVousCompletPage extends StatelessWidget {
  const TousLesRendezVousCompletPage({super.key});

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
              AppBarButton(text: 'Complète', isSelected: true),
              AppBarButton(text: 'Prochaine'),
              AppBarButton(text: 'Annulé'),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          DoctorAppointmentCard(
            name: 'Dr. Olivia Turner , M.D.',
            speciality: 'Dermato - endocrinologie',
            rating: 5,
            buttonText: 'Ajouter Un Avis',
          ),
          DoctorAppointmentCard(
            name: 'Dr. Alexander Bennett , Ph.D.',
            speciality: 'Dermato - génétique',
            rating: 4,
            buttonText: 'Ajouter Un Avis',
          ),
          DoctorAppointmentCard(
            name: 'Dr. Sophia Martinez , Ph.D.',
            speciality: 'Bio - ingénierie cosmétique',
            rating: 5,
            buttonText: 'Ajouter Un Avis',
          ),
          DoctorAppointmentCard(
            name: 'Dr. Alexander Bennett , Ph.D.',
            speciality: 'Dermato - génétique',
            rating: null,
            buttonText: 'Ajouter Un Avis',
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
