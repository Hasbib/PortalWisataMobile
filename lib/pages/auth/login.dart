import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.blueAccent,
        child: Center(
          child: Text("Halaman Login"),
        ),
      ),
    );
  }
}
