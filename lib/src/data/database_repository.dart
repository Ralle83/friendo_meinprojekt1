import '../domain/events.dart';
import '../domain/location.dart';

abstract class DatabaseRepository {
  /// gibt alle Events aus der Datenbank zurück
  Future<List<Event>> getEvents();

  void changeLocation(Event event, Location location);
  void addEvent(Event event);
}
