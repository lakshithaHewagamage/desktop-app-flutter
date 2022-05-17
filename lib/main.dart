import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  // It is the root widget of your application.  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'Multiple Layout Widget',  
      debugShowCheckedModeBanner: false,  
      theme: ThemeData(  
        // This is the theme of your application.  
        primarySwatch: Colors.green,  
      ),  
      home: MyHomePage(),  
    );  
  }  
}  
class MyHomePage extends StatelessWidget {  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
        appBar: AppBar(title: Text("FittedBox Widget")),  
        body: Center(  
        child: FittedBox(child: Row(  
          children: <Widget>[  
            Container(  
              child: Image.asset("assets/computer.png"),  
              ),  
              Container(  
                child: Text("This is a widget"),  
              )  
            ],  
          ),  
          fit: BoxFit.contain,  
        )  
      ),  
    );  
  }  
} 