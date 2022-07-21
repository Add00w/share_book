import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).disabledColor.withOpacity(0.03),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5.2,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: _ProfileClipper(),
                    child: Container(
                      color: Theme.of(context).primaryColor,
                      height: MediaQuery.of(context).size.height / 6,
                      child: Stack(
                        children: [
                          ClipPath(
                            clipper: __ProfileClipper2(),
                            child: Container(
                              margin: EdgeInsets.zero,
                              padding: EdgeInsets.zero,
                              color: Theme.of(context).colorScheme.secondary,
                              width: double.infinity,
                            ),
                          ),
                          Positioned(
                            top: 60,
                            left: 15,
                            child: Text(
                              'Addow',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      color: Colors.white70, fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: Image.asset(
                        'assets/images/avatar/avatar.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(
                    child: ListTile(
                      title: Text(
                        '21',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.grey, fontSize: 25),
                      ),
                      subtitle: Text(
                        'Books',
                      ),
                    ),
                  ),
                  Flexible(
                    child: ListTile(
                      title: Text(
                        '50k',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.grey, fontSize: 25),
                      ),
                      subtitle: Text('Followers'),
                    ),
                  ),
                  Flexible(
                    child: ListTile(
                      title: Text(
                        '30',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.grey, fontSize: 25),
                      ),
                      subtitle: Text('Following'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (_) => MainPage(),
                      //   ),
                      // );
                    },
                    child: Text('Edit Profile'),
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      primary: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, bottom: 10),
              child: Text(
                'Account',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.grey, fontSize: 15),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 30),
              elevation: 0.0,
              shape: RoundedRectangleBorder(side: BorderSide(width: 0.08)),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.shopping_cart,
                      size: 30,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(
                      "My Cart",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey, fontSize: 16),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Divider(),
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.store,
                      size: 30,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(
                      "Purchases",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey, fontSize: 16),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Divider(),
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.person,
                      size: 30,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(
                      "Account",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey, fontSize: 16),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, bottom: 10),
              child: Text(
                'Settings',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.grey, fontSize: 15),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 30),
              elevation: 0.0,
              shape: RoundedRectangleBorder(side: BorderSide(width: 0.08)),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.circle,
                      size: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Night Mode",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey, fontSize: 16),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Divider(),
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.notifications,
                      size: 30,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(
                      "Notifications",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey, fontSize: 16),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Divider(),
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.language,
                      size: 30,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(
                      "Languages",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey, fontSize: 16),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.info,
                      size: 30,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(
                      "Help",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey, fontSize: 16),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Divider(),
                  ListTile(
                    dense: true,
                    leading: Icon(
                      Icons.logout_outlined,
                      size: 30,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(
                      "Sign Out",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey, fontSize: 16),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class __ProfileClipper2 extends CustomClipper<Path> {
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

class _ProfileClipper extends CustomClipper<Path> {
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
