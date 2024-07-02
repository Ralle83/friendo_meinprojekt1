import 'dart:ui';

import 'location.dart';

class Event {
  // Attribute
  Location location;
  String title;
  String date;

  // Konstruktor
  Event({required this.location, required this.title, required this.date});
}

//toMap Methode
Map<String, dynamic> toMap () {
return (
  "location" : Location(city: Aschaffenburg, street: Schmittstr.5),
  "title" : title,
  "date" : date
  ); 

factory Event.fromMap(Map<String, dynamic> map) {
  return Event(
    Location: map["location"],
    title: map["title"],
    date: map["date"],
  );
      }


  }