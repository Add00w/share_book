import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);
  Widget _favoriteItemWidget(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/top/Fatherhood.png',
            width: 100,
          ),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The Heart of Hell',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.black.withOpacity(0.5)),
              ),
              Text(
                'Mitch Wiess',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.black.withOpacity(0.5)),
              ),
              SizedBox(height: 10),
              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.only(right: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                itemSize: 20,
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                width: width / 1.5,
                child: Text(
                  'The untold story of courage and sacrifice in the shadow of two Jima.',
                ),
              ),
              SizedBox(
                width: width * 0.68,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Add to cart'),
                      style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        primary: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                    ),
                    SizedBox(width: 5),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Remove from wishlist',
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 5,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0.0,
          title: Material(
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
        body: Column(
          children: [
            SizedBox(height: 8.0),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => _favoriteItemWidget(context),
                separatorBuilder: (context, index) => SizedBox(height: 15),
                itemCount: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
