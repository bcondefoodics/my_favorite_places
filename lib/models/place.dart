import 'package:uuid/uuid.dart';

class Place {
  final String id;
  final String name;

  Place({required this.name}) : id = Uuid().v4();
}
