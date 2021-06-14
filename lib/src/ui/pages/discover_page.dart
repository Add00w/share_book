import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: DiscoverTopClipper(),
                child: Container(
                  color: Theme.of(context).primaryColor,
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                ),
              ),
              ClipPath(
                clipper: DiscoverTopClipper2(),
                child: Container(
                  color: Theme.of(context).accentColor,
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, size: 25),
                    hintText: 'Search Books, Authors',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    suffixIcon: Icon(Icons.filter_list_outlined, size: 25),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    isDense: true,
                    filled: true,
                    fillColor: Theme.of(context).cardColor,
                  ),
                ),
              ),
              Positioned(
                child: Text('Our Top Picks'),
                top: 150,
                left: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DiscoverTopClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
      size.width / 4,
      size.height / 2,
      size.width / 2,
      size.height - 100,
    );
    path.quadraticBezierTo(
      size.width - (size.width / 4),
      size.height - 50,
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
      size.height - 100,
    );
    path.quadraticBezierTo(
      size.width - (size.width / 3),
      size.height,
      size.width,
      size.height,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
