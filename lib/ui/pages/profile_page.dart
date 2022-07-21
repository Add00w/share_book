import 'package:flutter/material.dart';

import '../widgets/clippers.dart';

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
                    clipper: ProfileClipper(),
                    child: Container(
                      color: Theme.of(context).primaryColor,
                      height: MediaQuery.of(context).size.height / 6,
                      child: Stack(
                        children: [
                          ClipPath(
                            clipper: ProfileClipper2(),
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
                    onPressed: () {},
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
