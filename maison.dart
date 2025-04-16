import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildNavigationBar(),
            _buildCalendar(),
            _buildAppointmentSection(), // Exemple de la première consultation
            _buildDoctorList(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Bonjour, Bienvenue',
            style: TextStyle(fontSize: 14.0, color: Colors.black54),
          ),
          Text(
            'Utilisateur',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined, color: Colors.blue),
          onPressed: () {
            // TODO: Implement notification action
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings_outlined, color: Colors.blue),
          onPressed: () {
            // TODO: Implement settings action
          },
        ),
      ],
    );
  }

  Widget _buildNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavigationButton(
            'Médecins',
            true,
          ), // 'true' pour l'onglet actif
          _buildNavigationButton('Préféré', false),
          const SizedBox(width: 40.0), // Espacement pour l'icône de recherche
          const Icon(Icons.search, color: Colors.blue),
        ],
      ),
    );
  }

  Widget _buildNavigationButton(String text, bool isActive) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {
            // TODO: Implement navigation logic
          },
          style: TextButton.styleFrom(
            foregroundColor: isActive ? Colors.blue : Colors.black54,
          ),
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        if (isActive)
          Container(
            width: 20.0,
            height: 2.0,
            color: Colors.blue,
            margin: const EdgeInsets.only(top: 2.0),
          ),
      ],
    );
  }

  Widget _buildCalendar() {
    final now = DateTime.now();
    final days = List.generate(7, (i) => now.add(Duration(days: i)));
    final dayNames = ['LUN', 'MAR', 'MER', 'JEU', 'VEN', 'SAM', 'DIM'];

    return Container(
      height: 100.0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: days.length,
        itemBuilder: (context, index) {
          final day = days[index];
          final dayName = dayNames[day.weekday - 1];
          final dayNumber = day.day;
          final isToday =
              day.day == now.day &&
              day.month == now.month &&
              day.year == now.year;

          return Container(
            width: 50.0,
            margin: const EdgeInsets.only(right: 8.0),
            decoration: BoxDecoration(
              color: isToday ? Colors.blue : Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$dayNumber',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: isToday ? Colors.white : Colors.blue,
                  ),
                ),
                Text(
                  dayName,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: isToday ? Colors.white : Colors.black54,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildAppointmentSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '11 Mercredi - Aujourd\'hui',
            style: TextStyle(fontSize: 14.0, color: Colors.black54),
          ),
          const SizedBox(height: 16.0),
          // Exemple d'une ligne d'heure
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text('9 AM ...'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                const Text('10 AM ...'),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Dr. Olivia Turner, M.D.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          'Traitement et prévention des dermatoses et des photodermatites.',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                const Icon(Icons.check_circle, color: Colors.green),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text('11 AM ...'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text('12 AM ...'),
          ),
        ],
      ),
    );
  }

  Widget _buildDoctorList() {
    // Exemple de données de médecins (à remplacer par tes données réelles)
    final doctors = [
      {
        'name': 'Dr. Olivia Turner, M.D.',
        'speciality': 'Dermato-endocrinologie',
        'rating': 5.0,
        'price': 60,
        'image':
            'https://via.placeholder.com/80/FFC107/000000?Text=OT', // Placeholder image
      },
      {
        'name': 'Dr. Alexander Bennett, Ph.D.',
        'speciality': 'Dermato-génétique',
        'rating': 4.5,
        'price': 40,
        'image':
            'https://via.placeholder.com/80/2196F3/FFFFFF?Text=AB', // Placeholder image
      },
      {
        'name': 'Dr. Sophia Martinez, Ph.D.',
        'speciality': 'Bio-ingénierie cosmétique',
        'rating': 5.0,
        'price': 150,
        'image':
            'https://via.placeholder.com/80/4CAF50/FFFFFF?Text=SM', // Placeholder image
      },
      {
        'name': 'Dr. Michael Davidson, M.D.',
        'speciality': 'Nano-dermatologie',
        'rating': 4.8,
        'price': 90,
        'image':
            'https://via.placeholder.com/80/9C27B0/FFFFFF?Text=MD', // Placeholder image
      },
      // ... add more doctors
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics:
          const NeverScrollableScrollPhysics(), // To disable scrolling within the Column
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        final doctor = doctors[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(doctor['image'] as String),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctor['name'] as String,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        doctor['speciality'] as String,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 16.0,
                          ),
                          const SizedBox(width: 4.0),
                          Text('${doctor['rating']}'),
                          const SizedBox(width: 8.0),
                          const Icon(
                            Icons.monetization_on_outlined,
                            color: Colors.grey,
                            size: 16.0,
                          ),
                          const SizedBox(width: 4.0),
                          Text('${doctor['price']}'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16.0),
                const Icon(Icons.question_mark_outlined, color: Colors.grey),
                const SizedBox(width: 8.0),
                const Icon(Icons.favorite_border_outlined, color: Colors.grey),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
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
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}
