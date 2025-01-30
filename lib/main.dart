import 'package:flutter/material.dart';

void main (){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      primaryColor: Colors.red,
          appBarTheme: AppBarTheme(
            color: Colors.red,
            centerTitle: true
          ),
        scaffoldBackgroundColor: Colors.grey,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white
          )
        )
      ),
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

        title: Column(
          children: [
            Text("Ostad Flutter 2",style: TextStyle(
              color: Colors.white,fontSize: 25
            ),),
          ],
        ),

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
                      return "Password must be 6 Character";
                    }
                    return null;
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
                        if(_formKey.currentState!.validate()){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>UserInfo()));
                        }
                    print("Submit");
                  }, child: Text("Submit",style: TextStyle(
                    fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold
                  ),)),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 300,
                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 20,mainAxisSpacing: 20),
                      itemCount: 9,
                      itemBuilder: (context,index){
                        return Container(
                         decoration: BoxDecoration(
                           color: Colors.orange,
                           borderRadius: BorderRadius.circular(10)
                         ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person,size: 40,color: Colors.white,),
                              ],
                            ),
                          )
                        );
                      })
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

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("User Information",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back")),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Page1()));
          }, child: Text("Page 1"))
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is page 1",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back")),
        ],
      ),
    );
  }
}

