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
        backgroundColor: Colors.blueAccent,
        title: Text('Search'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage("assets/doraemon.png"),
                  height: 150,
                  width: 400,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(height: 2), // Add space between the image and the row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 4, top: 0, left: 8),
                color: Colors.transparent,
                child: const Text(
                  'Jelajahi Karanganyar',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 8),
                child: TextButton(
                  onPressed: widget.goPageEvent,
                  child: Text(
                    'Lihat Semua',
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
