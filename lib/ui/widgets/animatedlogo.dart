

import 'package:flutter/material.dart';


class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({super.key});

  @override
  State<AnimatedLogo> createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>{
  late double _Opacity = 0.0;
  
  @override
  void initState(){
    super.initState();
    const int max = 500;
    const int delay = 10;
    for (int i = 0; i < max; i++){
      Future.delayed(Duration(milliseconds: delay*(i + 1)),(){
        setState(() {
          _Opacity = i/max;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context){
       return Opacity(opacity: _Opacity,
       child:Image.asset('assets/icons/CamCaptureIcon.png',width: 100,
       height: 100,
       fit: BoxFit.contain,));
  }
}