import 'package:flutter/material.dart';

class TipsPage extends StatefulWidget {
  @override
  TipsPageState createState() => TipsPageState();
}

class TipsPageState extends State<TipsPage> {
  List<String> _tips = [
    'Buvez beaucoup d\'eau pendant la grossesse',
    'Faites de l\'exercice régulièrement',
    'Mangez des aliments sains et équilibrés',
    'Reposez-vous suffisamment',
    'Parlez-en à votre médecin si vous avez des questions',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conseils'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: _tips.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_tips[index]),
            );
          },
        ),
      ),
    );
  }
}