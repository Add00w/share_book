import 'package:flutter/material.dart';

class DiscoverTopClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 150);
    path.quadraticBezierTo(
      size.width / 3,
      size.height / 2,
      size.width / 2,
      size.height - size.height / 3.2,
    );
    path.quadraticBezierTo(
      size.width - (size.width / 3),
      size.height - 100,
      size.width,
      size.height - 100,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}

class DiscoverTopClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 150);
    path.quadraticBezierTo(
      size.width / 3,
      size.height / 2,
      size.width / 2,
      size.height - size.height / 3.2,
    );
    path.quadraticBezierTo(
      size.width - (size.width / 3),
      size.height - 100,
      size.width,
      size.height - 100,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
