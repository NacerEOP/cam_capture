import 'package:flutter/material.dart';
import 'package:cam_capture/ui/screens/entry.dart';


void main() {
  runApp(const MyCamApp());
}



class MyCamApp extends StatelessWidget {
  const MyCamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Cam App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EntryScreen(),
    );
  }
}