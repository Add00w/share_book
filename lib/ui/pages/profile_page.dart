import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'data',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                decorationStyle: TextDecorationStyle.solid,
                color: Colors.amber,
                decoration: TextDecoration.underline,
              ),
        ),
      ),
    );
  }
}
