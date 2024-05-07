import '../friendo domain/events.dart';
import '../friendo domain/location.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<Event> events = [];
  @override
  void addEvent(Event event) {
    events.add(event);
  }

  @override
  void changeLocation(Event event, Location location) {
    event.location = location;
  }

  @override
  List<Event> getEvents() {
    return events;
  }
}
