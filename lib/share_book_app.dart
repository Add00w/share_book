import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_book/blocs/topics/topics_cubit.dart';
import 'package:share_book/repositories/topics_repo.dart';

import 'ui/pages/splash_page.dart';

class SharedBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => TopicsRepository(),
      child: BlocProvider(
        create: (context) => TopicsCubit(
          context.read<TopicsRepository>(),
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Theme.of(context).copyWith(
              primaryColor: Colors.pink.shade300,
              accentColor: Colors.pink.shade200,
              textTheme: Theme.of(context).textTheme.copyWith(
                  headline6: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold))),
          title: 'Share Book',
          home: SplashPage(),
        ),
      ),
    );
  }
}
