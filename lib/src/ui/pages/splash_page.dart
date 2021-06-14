import 'package:flutter/material.dart';

import 'main_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SplashClipper(),
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('assets/images/splash/splash.png')],
        ),
      ),
    );
  }
}

class SplashClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 9, size.height);
    path.addPolygon([
      Offset.fromDirection(50),
      Offset(size.width / 20, size.height / 5),
      Offset(0, size.height)
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
