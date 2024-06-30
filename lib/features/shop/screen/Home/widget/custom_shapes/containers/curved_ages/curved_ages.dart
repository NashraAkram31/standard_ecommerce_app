import 'package:flutter/material.dart';

class MYClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height); // Start at the bottom left corner
    final firstCurved = Offset(0, size.height - 20);
    final LastCurved = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurved.dx, firstCurved.dy, LastCurved.dx, LastCurved.dy);
    final SecondfirstCurved = Offset(0, size.height - 20);
    final SecondLastCurved = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(SecondfirstCurved.dx, SecondfirstCurved.dy,
        SecondLastCurved.dx, SecondLastCurved.dy);
    final thirdfirstCurved = Offset(size.width, size.height - 20);
    final thirdLastCurved = Offset(size.width, size.height);
    path.quadraticBezierTo(
      thirdfirstCurved.dx,
      thirdfirstCurved.dy,
      thirdLastCurved.dx,
      thirdLastCurved.dy,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
