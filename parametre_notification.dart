import 'package:flutter/material.dart';

class ParametreNotificationPage extends StatefulWidget {
  const ParametreNotificationPage({super.key});

  @override
  State<ParametreNotificationPage> createState() =>
      _ParametreNotificationPageState();
}

class _ParametreNotificationPageState extends State<ParametreNotificationPage> {
  bool _avisGeneral = true;
  bool _son = true;
  bool _appelSonore = true;
  bool _vibrer = false;
  bool _offresSpeciales = false;
  bool _paiements = true;
  bool _promotionEtRemise = false;
  bool _remboursement = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètre De Notification'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildSwitchListTile('Avis Général', _avisGeneral, (bool value) {
            setState(() {
              _avisGeneral = value;
            });
          }),
          _buildSwitchListTile('Son', _son, (bool value) {
            setState(() {
              _son = value;
            });
          }),
          _buildSwitchListTile('Appel Sonore', _appelSonore, (bool value) {
            setState(() {
              _appelSonore = value;
            });
          }),
          _buildSwitchListTile('Vibrer', _vibrer, (bool value) {
            setState(() {
              _vibrer = value;
            });
          }),
          _buildSwitchListTile('Offres Spéciales', _offresSpeciales, (
            bool value,
          ) {
            setState(() {
              _offresSpeciales = value;
            });
          }),
          _buildSwitchListTile('Paiements', _paiements, (bool value) {
            setState(() {
              _paiements = value;
            });
          }),
          _buildSwitchListTile('Promotion Et Remise', _promotionEtRemise, (
            bool value,
          ) {
            setState(() {
              _promotionEtRemise = value;
            });
          }),
          _buildSwitchListTile('Remboursement', _remboursement, (bool value) {
            setState(() {
              _remboursement = value;
            });
          }),
        ],
      ),
    );
  }

  Widget _buildSwitchListTile(
    String title,
    bool value,
    ValueChanged<bool> onChanged,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      onChanged: onChanged,
      activeColor: Colors.blue,
    );
  }
}
