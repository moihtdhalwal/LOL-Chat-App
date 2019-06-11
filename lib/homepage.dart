import 'package:flutter/material.dart';
import 'chatscreen.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOL CHAT APP"),
      ),
      body: chatscreen()
    );
  }
}
