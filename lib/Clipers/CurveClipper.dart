import 'dart:ui';

import 'package:flutter/cupertino.dart';

class UserCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height);
    var firstStart =  Offset(size.width/4 , size.height - 0.5);
    path.moveTo(size.width/2, 0);
    var firstEnd = Offset(size.width/2.25, size.height);
    path.quadraticBezierTo(firstStart.dx, firstEnd.dy, firstEnd.dx, firstEnd.dy);

      var secondStart = Offset(size.width - (size.width / 3.24), size.height -105);
      var secondEnd = Offset(size.width, size.height - 10);
      path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
       path.lineTo(size.width, 0);
       path.close();
    //
    // // path.lineTo(0.0, size.width - 30);
    // //
    // // ///////////////// Points Controllers
    // var firstControlPoint = Offset(size.width / 6, size.height);
    // var secondControlPoint = Offset(size.width - (size.width / 6), size.height);
    //
    // //////////////// Points
    // var firstPoint = Offset(size.width / 2, size.height);
    // var secondPoint = Offset(size.width, size.height - 30);
    //
    // //////////  Use Curve
    // path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
    //     firstPoint.dx, firstPoint.dy);
    //
    // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
    //     secondPoint.dx, secondPoint.dy);
    //
    // // path.lineTo(size.height, 0.0);
    // path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
    // TODO: implement shouldReclip
  }
}
