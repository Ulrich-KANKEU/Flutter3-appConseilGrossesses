import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  String _name = '';
  int _dueDate = 0;
  bool _isFirstPregnancy = false;
  String _notes = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nom',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Date prévue d\'accouchement (jour)',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _dueDate = int.tryParse(value) ?? 0;
                });
              },
            ),
            SizedBox(height: 16.0),
            CheckboxListTile(
              title: Text('Première grossesse'),
              value: _isFirstPregnancy,
              onChanged: (value) {
                setState(() {
                  _isFirstPregnancy = value!;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Notes',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _notes = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Enregistrer les informations du profil
                print('Nom: $_name');
                print('Date prévue d\'accouchement: $_dueDate');
                print('Première grossesse: $_isFirstPregnancy');
                print('Notes: $_notes');
              },
              child: Text('Enregistrer'),
            ),
          ],
        ),
      ),
    );
  }
}