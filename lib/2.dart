import 'package:flutter/material.dart';
import 'main.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var srcheight=MediaQuery.of(context).size.height;
    var srcwidth =MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector',style: TextStyle(
          fontSize:srcwidth*0.08,
        ),),
      ),
    );
  }
}