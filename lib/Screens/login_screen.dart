

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_signup_with_validations/Clipers/CurveClipper.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final  mediaQuery = MediaQuery.of(context).size;
     var  height = mediaQuery.height;
     var  width = mediaQuery.width;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedCrossFade( crossFadeState: CrossFadeState.showFirst
                 ,firstChild: Image.asset('assets/images/graph.png', height: height * 0.4,),
                 secondChild:  const  Text(''),
                 duration: const Duration(milliseconds: 600),
            ),
           ClipPath(
             clipper: UserCurveClipper(),
             child: AnimatedCrossFade(
               firstChild: Stack(
                 children: [
                   Container(color: Colors.grey,
                     height: 270, width: 300,),
                   Container(color: Colors.greenAccent,
                     height: 150, width: 300,),
                   Container(color: Colors.yellow,
                     height: 100, width: 300,),
                 ],
               ),
               secondChild: Stack(
                children: [
                  Container(color: Colors.black,
                    height: 270, width: 300,),
                ],
               ),
               crossFadeState: CrossFadeState.showFirst,
               duration: const Duration(milliseconds: 300),
             ),
           ),
          ],
        ),
      ),
    );
  }
}
