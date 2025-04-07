import 'package:flutter/material.dart';

class NewPlace extends StatelessWidget {
  const NewPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Place')),
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
