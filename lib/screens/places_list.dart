import 'package:flutter/material.dart';
import 'package:my_favorite_places/screens/add_place.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key});

  void _navigateNewPlace(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (ctx) => NewPlace()));
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
    );
  }
}
