import 'package:flutter/material.dart';
import 'homepage.dart';
void main()
{
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      home: homepage(),
      theme: ThemeData(
        backgroundColor: Colors.blueAccent,
        errorColor: Colors.red,
      ),
    );
  }
}
