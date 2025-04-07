import 'package:flutter/material.dart';
import 'package:my_favorite_places/screens/add_place.dart';
import 'package:my_favorite_places/widgets/places_list.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  void _navigateNewPlace(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (ctx) => AddPlaceScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
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
      body: PlacesList(places: []),
    );
  }
}
