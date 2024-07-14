import 'location.dart';

class Event {
  // Attribute
  Location location;
  String title;
  String date;

  // Konstruktor
  Event({required this.location, required this.title, required this.date});

  // toMap Methode
  Map<String, dynamic> toMap() {
    return {
      "location":
          location.toMap(), // Assuming Location class has a toMap() method
      "title": title,
      "date": date
    };
  }

  // fromMap Methode
  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      location: Location.fromMap(
          map["location"]), // Assuming Location class has a fromMap() method
      title: map["title"],
      date: map["date"],
    );
  }
}
