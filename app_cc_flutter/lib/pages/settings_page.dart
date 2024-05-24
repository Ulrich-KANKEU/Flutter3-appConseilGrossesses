import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  String _language = 'fr';
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paramètres'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              value: _language,
              onChanged: (value) {
                setState(() {
                  _language = value!;
                });
              },
              items: [
                DropdownMenuItem(value: 'fr', child: Text('Français')),
                DropdownMenuItem(value: 'en', child: Text('Anglais')),
              ],
              decoration: InputDecoration(
                labelText: 'Langue',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            SwitchListTile(
              title: Text('Mode sombre'),
              value: _darkMode,
              onChanged: (value) {
                setState(() {
                  _darkMode = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Enregistrer les paramètres
                print('Langue: $_language');
                print('Mode sombre: $_darkMode');
              },
              child: Text('Enregistrer'),
            ),
          ],
        ),
      ),
    );
  }
}