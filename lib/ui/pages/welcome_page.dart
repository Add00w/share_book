import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_book/blocs/topics/topics_cubit.dart';
import 'package:share_book/models/topics.dart';
import 'package:share_book/ui/pages/main_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  Widget _topicWidget(Topic topic, BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TopicsCubit>().selectTopic(topic.id);
      },
      child: Container(
        width: 100,
        height: 100,
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
            Text(
              topic.title,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: topic.selected
                  ? Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Theme.of(context).primaryColor)
                  : Theme.of(context).textTheme.bodyText2,
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
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipPath(
                clipper: _WelcomeClipper(),
                child: Container(
                  color: Theme.of(context).primaryColor,
                  height: MediaQuery.of(context).size.height / 6,
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: _WelcomeClipper2(),
                        child: Container(
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          color: Theme.of(context).accentColor,
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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

class _WelcomeClipper2 extends CustomClipper<Path> {
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

class _WelcomeClipper extends CustomClipper<Path> {
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





// class _WelcomeClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(0, size.height / 4);
//     path.cubicTo(
//       size.width / 3,
//       3 * size.height / 8,
//       3 * size.width / 5,
//       size.height / 4,
//       size.width,
//       size.height / 3,
//     );

//     path.lineTo(size.width, 0);

//     // path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }

// class _WelcomeClipper2 extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     print('size:${size.height} -${size.width}');
//     final path = Path();
//     path.lineTo(0, size.height / 3.3);
//     path.cubicTo(
//       size.width / 3,
//       3 * size.height / 10,
//       3 * size.width / 5,
//       size.height / 2.7,
//       size.width,
//       size.height / 2.9,
//     );

//     path.lineTo(size.width, 0);

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }