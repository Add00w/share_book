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
      )
      //  ThemeData(
      //   primarySwatch: MaterialColor(
      //     0xfff06292,
      //     <int, Color>{
      //       50: Colors.pink.shade50,
      //       100: Colors.pink.shade100,
      //       200: Colors.pink.shade200,
      //       300: Colors.pink.shade300,
      //       400: Colors.pink.shade400,
      //       500: Colors.pink.shade500,
      //       600: Colors.pink.shade600,
      //       700: Colors.pink.shade700,
      //       800: Colors.pink.shade800,
      //       900: Colors.pink.shade900
      //     },
      //   ),
      // )
      ,
      title: 'Share Book',
      home: SplashPage(),
    );
  }
}
