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

class ProfileClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint1 = Offset(size.width / 4, size.height);
    var controlPoint2 = Offset(size.width / 1.5, size.height / 1.5);
    var endPoint = Offset(size.width, size.height / 1.07);
    print('size:${size.height} -${size.width}');
    final path = Path();
    path
      ..lineTo(0, size.height / 1.1)
      ..cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint1 = Offset(size.width / 1.2, size.height / 1.3);
    var controlPoint2 = Offset(size.width / 2, size.height);
    var endPoint = Offset(size.width, size.height / 1.05);
    print('size:${size.height} -${size.width}');
    final path = Path();
    path
      ..lineTo(0, size.height)
      ..cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class WelcomeClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint1 = Offset(size.width / 4, size.height);
    var controlPoint2 = Offset(size.width / 1.5, size.height / 1.5);
    var endPoint = Offset(size.width, size.height / 1.07);
    print('size:${size.height} -${size.width}');
    final path = Path();
    path
      ..lineTo(0, size.height / 1.1)
      ..cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class WelcomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint1 = Offset(size.width / 1.2, size.height / 1.3);
    var controlPoint2 = Offset(size.width / 2, size.height);
    var endPoint = Offset(size.width, size.height / 1.05);
    print('size:${size.height} -${size.width}');
    final path = Path();
    path
      ..lineTo(0, size.height)
      ..cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
