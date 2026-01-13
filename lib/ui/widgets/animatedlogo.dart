

import 'package:flutter/material.dart';


class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({super.key});

  @override
  State<AnimatedLogo> createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>{
  late double _opacity = 0.0;
  
  @override
  void initState(){
    super.initState();
    const int max = 500;
    const int delay = 10;
    for (int i = 0; i < max; i++){
      Future.delayed(Duration(milliseconds: delay*(i + 1)),(){
        setState(() {
          _opacity = i/max;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context){
       return Opacity(opacity: _opacity,
       child:FittedBox(
         fit:BoxFit.scaleDown,
         child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
         Image.asset('assets/icons/CamCaptureIcon.png',width: 100,
       height: 100,
       fit: BoxFit.contain,),
       Column(mainAxisAlignment: MainAxisAlignment.center,children: [
           Text('CamCapture',style: Theme.of(context).textTheme.headlineMedium,),
            Text('Developed by NacerEOP',style: Theme.of(context).textTheme.headlineSmall,)
       ],)
      
       ],),
       )
       
      );
  }
}