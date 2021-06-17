import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ShareBookSlider extends StatelessWidget {
  ShareBookSlider({Key? key}) : super(key: key);

  final items = [
    Column(
      children: [
        Flexible(child: Image.asset('assets/images/top/Business-1.png')),
        Text(
          'Bussiness',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    Column(
      children: [
        Flexible(child: Image.asset('assets/images/top/Fatherhood.png')),
        Text(
          'Fatherhood',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    Column(
      children: [
        Flexible(
            child: Image.asset('assets/images/top/full-share-1 copy 13.png')),
        Text(
          'The Quen',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    Column(
      children: [
        Flexible(
            child: Image.asset('assets/images/top/full-share-1 copy 14.png')),
        Text(
          'CowBoys',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: items,
        options: CarouselOptions(
          height: 200,
          aspectRatio: 16 / 9,
          viewportFraction: 0.26,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        ));
  }

  callbackFunction(int index, CarouselPageChangedReason reason) {}
}
