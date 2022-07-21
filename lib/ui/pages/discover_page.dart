import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:share_book/ui/widgets/clippers.dart';
import 'package:share_book/ui/widgets/share_book_slider.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  static final _items = [
    Image.asset('assets/images/top/Fatherhood.png'),
    Image.asset('assets/images/top/full-share-1 copy 13.png'),
    Image.asset('assets/images/top/full-share-1 copy 14.png'),
    Image.asset('assets/images/top/Fatherhood.png'),
    Image.asset('assets/images/top/full-share-1 copy 13.png'),
    Image.asset('assets/images/top/full-share-1 copy 14.png'),
  ];
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
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: DiscoverTopClipper(),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    height: _height * 0.8,
                    width: double.infinity,
                  ),
                ),
                ClipPath(
                  clipper: DiscoverTopClipper2(),
                  child: Container(
                    color: Theme.of(context).colorScheme.secondary,
                    height: _height * 0.78,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 34),
                  child: Material(
                    elevation: 1,
                    borderRadius: BorderRadius.circular(30),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, size: 25),
                        hintText: 'Search Books, Authors',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        suffixIcon: Icon(Icons.filter_list_outlined, size: 25),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        isDense: true,
                        filled: true,
                        fillColor: Theme.of(context).cardColor,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: _height * 0.15,
                  left: 15,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Our Top Picks',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
                Positioned(
                  width: 400,
                  top: _height * 0.19,
                  child: ShareBookSlider(),
                ),
                Positioned(
                  top: _height / 1.55,
                  width: MediaQuery.of(context).size.width,
                  height: 200,
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
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Text(
                'Trending Books',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Wrap(
                spacing: 20,
                runSpacing: 15,
                children: [..._items],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Text(
                'Best Share',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.black),
              ),
            ),
            CarouselSlider(
                items: [..._items],
                options: CarouselOptions(
                  viewportFraction: 0.32,
                  initialPage: 0,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                )),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Text(
                'Recently Viewed',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.black),
              ),
            ),
            CarouselSlider(
                items: [..._items],
                options: CarouselOptions(
                  viewportFraction: 0.32,
                  initialPage: 0,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                ))
          ],
        ),
      ),
    );
  }
}
