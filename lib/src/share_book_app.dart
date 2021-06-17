import 'package:flutter/material.dart';
import 'package:share_book/src/ui/pages/splash_page.dart';

class SharedBookApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
          primaryColor: Colors.pink.shade300,
          accentColor: Colors.pink.shade200,
          textTheme: Theme.of(context).textTheme.copyWith(
              headline6:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
      title: 'Share Book',
      home: SplashPage(),
    );
  }
}
