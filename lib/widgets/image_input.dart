import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key, required this.onSelectImage});

  final Function(File pickedImage) onSelectImage;

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _imageFile;

  void _takePicture() {
    final imagePicker = ImagePicker();
    imagePicker
        .pickImage(source: ImageSource.camera)
        .then((XFile? file) {
          if (file != null) {
            setState(() {
              _imageFile = File(file.path);
            });

            widget.onSelectImage(_imageFile!);
          }
        })
        .catchError((error) {
          // Handle error
        });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = TextButton.icon(
      icon: Icon(Icons.camera),
      onPressed: _takePicture,
      label: Text('Add place'),
    );

    if (_imageFile != null) {
      content = Image.file(
        _imageFile!,
        fit: BoxFit.cover,
        width: double.infinity,
        height: 250,
        alignment: Alignment.center,
      );
    }

    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
        ),
      ),
      child: content,
    );
  }
}
