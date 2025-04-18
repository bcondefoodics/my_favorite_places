import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_favorite_places/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super([]);

  void addPlace(String title, File imagePicked) {
    final newPlace = Place(name: title, imagePicked: imagePicked);
    state = [...state, newPlace];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
      (ref) => UserPlacesNotifier(),
    );
