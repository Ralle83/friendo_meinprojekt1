import 'package:friendo_meinprojekt/src/data/database_repository.dart';
import 'package:friendo_meinprojekt/src/domain/events.dart';
import 'package:friendo_meinprojekt/src/domain/location.dart';

class FirestoreDatabase implements DatabaseRepository {
  @override
  void addEvent(Event event) {
    // TODO: implement addEvent
  }

  @override
  void changeLocation(Event event, Location location) {
    // TODO: implement changeLocation
  }

  @override
  Future<List<Event>> getEvents() async {
    // TODO: implement getEvents
    return []; // Dummy-Rückgabe, bis die Methode implementiert ist
  }
}
