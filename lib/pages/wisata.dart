import 'package:flutter/material.dart';

class Wisata extends StatefulWidget {
  @override
  State<Wisata> createState() => _WisataState();
}

class _WisataState extends State<Wisata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Text("Halaman Wisata"),
        ),
      ),
    );
  }
}
