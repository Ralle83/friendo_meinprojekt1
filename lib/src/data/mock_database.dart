import '../domain/events.dart';
import '../domain/location.dart';
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
