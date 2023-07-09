import 'package:intl/intl.dart';

class ItemModel {
  ItemModel(
      {required this.id,
      required this.title,
      required this.imageURL,
      required this.relaseDate});

  final String title;
  final String imageURL;
  final DateTime relaseDate;
  final String id;

  String daysLeft() {
    return relaseDate.difference(DateTime.now()).inDays.toString();
  }

  String relaseDarteFormated() {
    return DateFormat.yMMMMEEEEd().format(relaseDate);
  }
}
