import 'package:friendo_meinprojekt/src/data/database_repository.dart';
import 'package:friendo_meinprojekt/src/domain/location.dart';

class FirestoreDatabase implements DatabaseRepository {
  @override
  void addEvent(event) {
    // TODO: implement addEvent
  }

  @override
  void changeLocation(event, Location location) {
    // TODO: implement changeLocation
  }

  @override
  Future<List> getEvents() {
    // TODO: implement getEvents
    throw UnimplementedError();
  }
}
