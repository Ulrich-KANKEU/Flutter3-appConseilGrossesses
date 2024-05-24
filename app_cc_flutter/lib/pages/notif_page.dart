import 'package:flutter/material.dart';

class NotifPage extends StatefulWidget {
  @override
  NotifPageState createState() => NotifPageState();
}

class NotifPageState extends State<NotifPage> {
  bool _remindMeBeforeBirth = true;
  bool _remindMeDuringPregnancy = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckboxListTile(
              title: Text('Me rappeler avant l\'accouchement'),
              value: _remindMeBeforeBirth,
              onChanged: (value) {
                setState(() {
                  _remindMeBeforeBirth = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Me rappeler pendant la grossesse'),
              value: _remindMeDuringPregnancy,
              onChanged: (value) {
                setState(() {
                  _remindMeDuringPregnancy = value!;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Enregistrer les paramètres de notification
                print('Rappeler avant l\'accouchement: $_remindMeBeforeBirth');
                print('Rappeler pendant la grossesse: $_remindMeDuringPregnancy');
              },
              child: Text('Enregistrer'),
            ),
          ],
        ),
      ),
    );
  }
}