import 'dart:io';

import 'package:uuid/uuid.dart';

class Place {
  final String id;
  final String name;
  final File imagePicked;

  Place({required this.name, required this.imagePicked}) : id = Uuid().v4();
}
