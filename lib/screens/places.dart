import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_favorite_places/providers/user_places.dart';
import 'package:my_favorite_places/screens/add_place.dart';
import 'package:my_favorite_places/widgets/places_list.dart';

import '../models/place.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  void _navigateNewPlace(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (ctx) => AddPlaceScreen()),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Place> places = ref.watch(userPlacesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              _navigateNewPlace(context);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      body: PlacesList(places: places),
    );
  }
}
