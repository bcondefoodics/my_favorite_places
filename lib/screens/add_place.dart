import 'package:flutter/material.dart';

class AddPlaceScreen extends StatelessWidget {
  const AddPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Place')),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text(
                  'Place name',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
    );
  }
}
