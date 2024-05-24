class PregnancyModel {
  final int id;
  final String title;
  final String description;
  final DateTime dueDate;
  final int week;
  final int month;

  PregnancyModel({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.week,
    required this.month,
  });
}