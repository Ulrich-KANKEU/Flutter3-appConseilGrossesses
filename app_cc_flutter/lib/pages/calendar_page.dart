import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  @override
  CalendarPageState createState() => CalendarPageState();
}

class CalendarPageState extends State<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendrier de grossesse'),
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2023, 1, 1),
            lastDay: DateTime.utc(2024, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ),
          SizedBox(height: 20),
          if (_selectedDay != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jour sélectionné : ${_selectedDay!.day}/${_selectedDay!.month}/${_selectedDay!.year}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Votre bébé mesure environ ${_calculateBabySize(_selectedDay!)}.',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Montserrat",
                    ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  String _calculateBabySize(DateTime date) {
    // Logique pour calculer la taille du bébé à une date donnée
    // (en fonction de la semaine de grossesse, par exemple)
    int weeks = date.difference(DateTime(2023, 1, 1)).inDays ~/ 7;
    if (weeks < 12) {
      return "petit pois";
    } else if (weeks < 24) {
      return "citron";
    } else {
      return "pastèque";
    }
  }
}