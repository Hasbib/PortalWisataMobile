import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  final VoidCallback goPageEvent;
  final VoidCallback goPageWisata;

  Home({required this.goPageEvent, required this.goPageWisata});
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Text("Halaman Beranda"),
        ),
      ),
    );
  }
}
