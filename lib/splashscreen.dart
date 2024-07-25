import 'package:flutter/material.dart';

class SplashScreenKu extends StatefulWidget {
  @override
  _SplashScreenKuState createState() => _SplashScreenKuState();
}

class _SplashScreenKuState extends State<SplashScreenKu> {
  @override
  void initState() {
    super.initState();
    // Optionally, you can add logic here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Container(
        color: Color.fromARGB(255, 19, 134, 69),
        child: Center(
          child: Text("Halaman Splash Screen"),
        ),
      ),
    );
  }
}
