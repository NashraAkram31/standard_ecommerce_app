import 'package:flutter/material.dart';

class MYClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    final firstcurved = Offset(0, size.height - 20);
    final lastcurved = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstcurved.dx, firstcurved.dy, lastcurved.dx, lastcurved.dy);
    path.lineTo(size.width, 0);
    path.close();
    return Path();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
