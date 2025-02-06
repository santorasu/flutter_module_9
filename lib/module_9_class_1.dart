import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  final List<String> categories = [
    'Fruits',
    'Vegetables',
    'Dairy',
    'Bakery',
    'Snacks',
    'Beverages'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Example"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
                spacing: 10,
                runSpacing: 20,
                children: categories.map((item) {
                  return Chip(
                    label: Text(item),
                    backgroundColor: Colors.blueAccent,
                  );
                }).toList()),
          ),
          Expanded(
            child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                children: List.generate(
                    15,
                    (index) => Chip(
                          label: Text("Item ${index}"),
                          backgroundColor: Colors.blue,
                        ))),
          ),
        ],
      ),
    );
  }
}

class LayoutBuilderOstad extends StatelessWidget {
  const LayoutBuilderOstad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth>600){
            return Center(
              child: Text("This is table Layout",style: TextStyle(
                fontSize: 30,
                color: Colors.blue
              ),),
            );
          }else{
            return Center(
              child: Text("This is column Layout",style: TextStyle(
                fontSize: 30,
                color: Colors.amber
              ),),
            );
          }
        }),
      );
  }
}
