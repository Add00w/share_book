import 'package:flutter/material.dart';
import 'package:share_book/src/ui/widgets/clippers.dart';
import 'package:share_book/src/ui/widgets/share_book_slider.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  static final _categories = [
    Column(
      children: [
        CircleAvatar(
          radius: 35,
          child: Icon(Icons.add),
          backgroundColor: Colors.black,
        ),
        Text('Add'),
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/images/top/Fatherhood.png'),
        ),
        Text('Food'),
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/images/top/Fatherhood.png'),
        ),
        Text('Medical'),
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/images/top/Fatherhood.png'),
        ),
        Text('History'),
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/images/top/Fatherhood.png'),
        ),
        Text('Social'),
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/images/top/Fatherhood.png'),
        ),
        Text('Social'),
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/images/top/Fatherhood.png'),
        ),
        Text('Social'),
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/images/top/Fatherhood.png'),
        ),
        Text('Social'),
      ],
    ),
  ];
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
                  height: MediaQuery.of(context).size.height * 0.67,
                  width: double.infinity,
                ),
              ),
              ClipPath(
                clipper: DiscoverTopClipper2(),
                child: Container(
                  color: Theme.of(context).accentColor,
                  height: MediaQuery.of(context).size.height * 0.66,
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
                child: Text(
                  'Our Top Picks',
                  style: Theme.of(context).textTheme.headline6,
                ),
                top: 150,
                left: 15,
              ),
              Positioned(
                width: 400,
                child: ShareBookSlider(),
                top: 200,
              ),
              Positioned(
                top: 520,
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return _categories[index];
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: _categories.length,
                  shrinkWrap: true,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
