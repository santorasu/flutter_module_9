import 'package:flutter/material.dart';

class ModuleNine extends StatelessWidget {
  const ModuleNine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Module 9"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.redAccent,
            child: AspectRatio(aspectRatio: 16/9,
            child: Container(
              color: Colors.amber,
            ),),
          ),

         Center(
           child: Container(
             height: 350,
             width: 250,
             color: Colors.blue,
             child: FractionallySizedBox(
               widthFactor: 0.5,
               heightFactor: 0.5,
               child: Container(
                 color: Colors.green,
                 width: 100,
                 height: 100,
                 child: Center(child: Text("50% width & Height"),),
               ),
             ),
           ),
         )
        ],
      ),
    );
  }
}
