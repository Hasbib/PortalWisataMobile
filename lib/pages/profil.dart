import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Text("Halaman Profil"),
        ),
      ),
    );
  }
}
