import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_favorite_places/providers/user_places.dart';

import '../widgets/image_input.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();
  File? _pickedImage;

  void _selectImage(File pickedImage) {
    _pickedImage = pickedImage;
  }

  void _savePlace() {
    final enteredText = _titleController.text;

    if (enteredText.isEmpty || _pickedImage == null) {
      return;
    }

    ref.read(userPlacesProvider.notifier).addPlace(enteredText, _pickedImage!);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add new place')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(label: Text('Title')),
              controller: _titleController,
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            SizedBox(height: 10),
            ImageInput(onSelectImage: _selectImage),
            SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Icon(Icons.add),
              onPressed: _savePlace,
              label: Text('Add Place'),
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
    );
  }
}
