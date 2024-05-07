import '../friendo domain/events.dart';
import '../friendo domain/location.dart';

abstract class DatabaseRepository {
  /// gibt alle Quizgames aus der Datenbank zurück
  List<Event> getEvents();

  void changeLocation(Event event, Location location);
  void addEvent(Event event);
}
