import '../domain/events.dart';
import '../domain/location.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<Event> events = [];
  @override
  void addEvent(Event event) async {
    events.add(event);
  }

  @override
  void changeLocation(Event event, Location location) async {
    event.location = location;
  }

  @override
  Future<List<Event>> getEvents() async {
    await Future.delayed(const Duration(seconds: 2));
    return events;
  }
}
