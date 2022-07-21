import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_book/blocs/topics/topics_cubit.dart';
import 'package:share_book/models/topics.dart';
import 'package:share_book/ui/pages/main_page.dart';

import '../widgets/clippers.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  Widget _topicWidget(Topic topic, BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TopicsCubit>().selectTopic(topic.id);
      },
      child: SizedBox(
        width: 100,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Image.asset(
                  'assets/images/top/SKnowles-USCapitol-1@3x.png',
                  width: 100,
                  height: 100,
                ),
                if (topic.selected)
                  Icon(
                    Icons.check,
                    size: 60,
                    color: Colors.white,
                  ),
              ],
            ),
            SizedBox(
              width: 100,
              child: Text(
                topic.title,
                overflow: TextOverflow.ellipsis,
                style: topic.selected
                    ? Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Theme.of(context).primaryColor)
                    : Theme.of(context).textTheme.bodyText2,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TopicsCubit, TopicsState>(
        bloc: context.read<TopicsCubit>()..getTopics(),
        builder: (context, state) {
          return Column(
            children: [
              ClipPath(
                clipper: WelcomeClipper(),
                child: Container(
                  color: Theme.of(context).primaryColor,
                  height: MediaQuery.of(context).size.height / 4.4,
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: WelcomeClipper2(),
                        child: Container(
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          color: Theme.of(context).colorScheme.secondary,
                          height: MediaQuery.of(context).size.height / 4.8,
                          width: double.infinity,
                        ),
                      ),
                      Positioned(
                        top: 60,
                        left: 15,
                        child: Text(
                          'Welcome',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.white70),
                        ),
                      ),
                      Positioned(
                        top: 85,
                        left: 15,
                        child: Text(
                          'Choose the topics',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              if (state is TopicsLoading || state is TopicsInitial) ...{
                Center(child: CircularProgressIndicator())
              } else if (state is TopicsLoaded) ...{
                Flexible(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    children: [
                      for (var topic in state.topics) ...{
                        _topicWidget(topic, context),
                      },
                    ],
                  ),
                ),
              },
              SizedBox(height: 15),
              Material(
                color: Colors.transparent,
                child: RichText(
                  text: TextSpan(
                    text: 'More Topics',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Theme.of(context).primaryColor,
                          decorationStyle: TextDecorationStyle.solid,
                          decoration: TextDecoration.underline,
                        ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('More...');
                      },
                  ),
                  strutStyle: StrutStyle.disabled,
                ),
              ),
              SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => MainPage(),
                    ),
                  );
                },
                child: Text('Apply'),
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 5,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
