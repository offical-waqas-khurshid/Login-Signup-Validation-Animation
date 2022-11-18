import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_signup_with_validations/Clipers/CurveClipper.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    var height = mediaQuery.height;
    var width = mediaQuery.width;
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
            AnimatedCrossFade(
              crossFadeState: CrossFadeState.showFirst,
              firstChild: Image.asset(
                'assets/images/graph.png',
                height: height * 0.3,
              ),
              secondChild: const Text(''),
              duration: const Duration(milliseconds: 600),
            ),
            Stack(
              children: [
                ClipPath(
                  clipper: UserCurveClipper(),
                  child: Container(
                    color: Colors.black.withOpacity(0.1),
                    height: height * 0.5,
                    width: width * 0.999,
                  ),
                ),
                ClipPath(
                  clipper: UserCurveClipper(),
                  child: Container(
                    color: Colors.black.withOpacity(0.1),
                    height: height * 0.2,
                    width: width * 0.999,
                  ),
                ),
                ClipPath(
                  clipper: UserCurveClipper(),
                  child: Container(
                    color: Colors.blue,
                    height: height * 0.4,
                    width: width * 0.999,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
