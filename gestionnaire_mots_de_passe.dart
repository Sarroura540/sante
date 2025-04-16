import 'package:flutter/material.dart';

class GestionnaireMotsDePassePage extends StatefulWidget {
  const GestionnaireMotsDePassePage({super.key});

  @override
  State<GestionnaireMotsDePassePage> createState() =>
      _GestionnaireMotsDePassePageState();
}

class _GestionnaireMotsDePassePageState
    extends State<GestionnaireMotsDePassePage> {
  bool _obscureNouveauMotDePasse = true;
  bool _obscureConfirmerMotDePasse = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestionnaire De Mots De Passe'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Mot De Passe Actuel',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: '********'),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // TODO: Implement forgot password logic
                },
                child: const Text(
                  'Mot De Passe Oublié ?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Nouveau Mot De Passe',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              obscureText: _obscureNouveauMotDePasse,
              decoration: InputDecoration(
                hintText: '********',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureNouveauMotDePasse
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureNouveauMotDePasse = !_obscureNouveauMotDePasse;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Confirmer Le Nouveau Mot De Passe',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              obscureText: _obscureConfirmerMotDePasse,
              decoration: InputDecoration(
                hintText: '********',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureConfirmerMotDePasse
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureConfirmerMotDePasse =
                          !_obscureConfirmerMotDePasse;
                    });
                  },
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement change password logic
                },
                child: const Text('Changer Le Mot De Passe'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
