import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({Key? key, required this.book}) : super(key: key);
  final Map<String, String> book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    image: DecorationImage(
                      image: AssetImage(book['image']!),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.maybePop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(book['title']!,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.black)),
                SizedBox(height: 7),
                Text(book['title']!,
                    style: Theme.of(context).textTheme.caption),
                SizedBox(height: 7),
                SizedBox(
                  width: 56,
                  height: 30,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Text('20',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Theme.of(context).accentColor)),
                      Positioned(
                          top: 0.0,
                          left: 0.0,
                          child: Text(
                            '\$',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Theme.of(context).accentColor),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Flexible(
            child: DefaultTabController(
              length: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabBar(
                    unselectedLabelColor: Colors.grey,
                    labelColor: Theme.of(context).primaryColor,
                    labelPadding: EdgeInsets.only(
                      right: 5,
                    ),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 18),
                    onTap: (value) => print(''),
                    tabs: [
                      Text('Description'),
                      Text('Reviews'),
                      Text('Similar'),
                    ],
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.'
                                'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                '3/5\nrenovation is currently in progress. good location but not much to do. air conditioning is good but not working once in a while. need to reset by calling engineering. if u want ocean activity, find marine tour operators seperately in advance. The hotel concierge does not have mini tour program. walking distance to burger king and amusement park and ocean. basement gym smells old.... have executive lounge on 11th. generally old facility but well maintained. be ware mosquitoes.....refer to one of snorkeling and diving operators. u need to reserve in advance.'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Similar Books'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
