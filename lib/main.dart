import 'package:flutter/material.dart';

void main (){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Class 2',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Column(
          children: [
            Text("Ostad Flutter 2",style: TextStyle(
              color: Colors.white,fontSize: 25
            ),),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Form(
              key: _formKey,
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Your Email",
                    label: Text("Email"),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Empty email not allowed";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Your Password",
                    label: Text("Password"),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty || value.length <6){

                    }
                  },
                ),

                SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                      ),
                      onPressed: (){
                    print("Submit");
                  }, child: Text("Submit",style: TextStyle(
                    fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold
                  ),)),
                )
              ],
            ),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        print("Floating Action Button");
      }, label: Text("Add New")),
    );
  }
}

