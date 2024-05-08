import '../domain/events.dart';
import '../domain/location.dart';

abstract class DatabaseRepository {
  /// gibt alle Quizgames aus der Datenbank zurück
  List<Event> getEvents();

  void changeLocation(Event event, Location location);
  void addEvent(Event event);
}
