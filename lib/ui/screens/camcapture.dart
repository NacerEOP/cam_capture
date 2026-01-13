import 'dart:math';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';


class CamCapture extends StatefulWidget {
  const CamCapture({super.key});

  @override
  State<CamCapture> createState() => _CamCaptureState();

}

class _CamCaptureState extends State<CamCapture>{

  @override
  Widget build (BuildContext context){
    return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              toolbarHeight: MainAxisSize.min.index.toDouble(),
            ),
            bottomNavigationBar: BottomAppBar(
              color: const Color.fromARGB(255, 0, 0, 2),
              height: 20,
            ),
            body: const Center(
                child: Text('hohla'),
            ),
        );
  }

}