import 'package:flutter/material.dart';

class ModuleNine extends StatelessWidget {
  const ModuleNine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Module 9"),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                 widthFactor: 0.6,
                 heightFactor: 0.5,
                 alignment: Alignment.centerLeft,
                 child: Container(
                   color: Colors.green,
                   width: 100,
                   height: 100,
                   child: Center(child: Text("50% width & Height",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                 ),
               ),
             ),
           ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ExpandedExample()));
            }, child: Text("Expanded"))
          ],
        ),
      ),
    );
  }
}


class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Example",style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 200,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.green,
                ),
              ),

              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StackPractice()));
              }, child: Text("Stack Practice"))
            ],
          ),
        ),
      )
    );
  }
}

class StackPractice extends StatelessWidget {
  const StackPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Practice",style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),

      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),

                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
