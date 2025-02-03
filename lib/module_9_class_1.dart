import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  final List<String> categories = ['Fruits', 'Vegetables', 'Dairy', 'Bakery', 'Snacks', 'Beverages'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Example"),
      ),
      body: Column(
        children: [
          Wrap(
            children: [
              ListTile(
                title: Text("Data 1"),
              ),
              ListTile(
                title: Text("Data 1"),
              ),
              ListTile(
                title: Text("Data 1"),
              ),
              ListTile(
                title: Text("Data 1"),
              ),
              ListTile(
                title: Text("Data 1"),
              ),
              ListTile(
                title: Text("Data 1"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
