import 'package:flutter/material.dart';

class ProfilMedecinPage extends StatelessWidget {
  const ProfilMedecinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil du médecin'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Icon(Icons.share_outlined),
          SizedBox(width: 16.0),
          Icon(Icons.favorite_border_outlined),
          SizedBox(width: 8.0),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  // TODO: Replace with actual doctor image
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/100',
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Dr. Olivia Turner , M.D.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text('Dermato - endocrinologie'),
                      SizedBox(height: 8.0),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16.0),
                          Text('4.5'),
                          SizedBox(width: 4.0),
                          Text('(30)'),
                          SizedBox(width: 8.0),
                          Icon(
                            Icons.monetization_on_outlined,
                            color: Colors.grey,
                            size: 16.0,
                          ),
                          SizedBox(width: 4.0),
                          Text('60'),
                        ],
                      ),
                      Text(
                        'Lun - Dim / 9 AM - 4 PM',
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Profil',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Il est important de prendre soin du patient , le patient sera suivi par le patient , mais en même temps il arrivera qu\'il y ait beaucoup de travail et de douleur . Car , pour en venir qu\'au moindre détail , nul ne devrait pratiquer un travail quelconque s\'il n\'en tire aucun bénéfice .',
              style: TextStyle(fontSize: 14.0),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Focus',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'The impact of hormonal imbalances on skin conditions , specializing in acne , hirsutism , and other skin disorders .',
              style: TextStyle(fontSize: 14.0),
            ),
            const SizedBox(height: 24.0),
            const Text(
              '20 années\nd\'expérience',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),
            const CalendarStrip(), // Placeholder for the calendar widget
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
}

class CalendarStrip extends StatelessWidget {
  const CalendarStrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: () {}),
        const Text(
          '< MOIS      >',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
            ),
            itemCount: 7 * 5, // Approximate number of days to show
            itemBuilder: (context, index) {
              return Center(
                child: Text('${index + 1}'),
              ); // Placeholder for days
            },
          ),
        ),
        IconButton(icon: const Icon(Icons.arrow_forward_ios), onPressed: () {}),
      ],
    );
  }
}
