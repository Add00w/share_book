import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);
  static const _tabs = [Text('General'), Text('New'), Text('Most Viewed')];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0.0,
          title: Material(
            elevation: 1.5,
            borderRadius: BorderRadius.circular(30),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, size: 25),
                hintText: 'Search Books, Authors',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(30),
                ),
                suffixIcon: Icon(Icons.filter_list_outlined, size: 25),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(30),
                ),
                isDense: true,
                filled: true,
                fillColor: Theme.of(context).cardColor,
              ),
            ),
          ),
          bottom: TabBar(
            tabs: _tabs,
            unselectedLabelColor: Colors.grey,
            labelColor: Theme.of(context).primaryColor,
            indicatorColor: Colors.transparent,
            labelPadding: EdgeInsets.zero,
            labelStyle: Theme.of(context).textTheme.headline6,
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Flexible(
                child: TabBarView(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.8,
                      mainAxisSpacing: 15,
                      padding: EdgeInsets.only(top: 15, left: 30, right: 15),
                      children: [
                        Card(
                          color: Theme.of(context).backgroundColor,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Biography',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Image.asset(
                                    'assets/images/top/Biography.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Theme.of(context).backgroundColor,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Bussiness',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Image.asset(
                                    'assets/images/top/Business-1.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Theme.of(context).backgroundColor,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Biography',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Image.asset(
                                    'assets/images/top/full-share-1 copy 13.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Theme.of(context).backgroundColor,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Biography',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Image.asset(
                                    'assets/images/top/full-share-1 copy 13.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Theme.of(context).backgroundColor,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Bussiness',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Image.asset(
                                    'assets/images/top/Business-1.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Theme.of(context).backgroundColor,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Biography',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Image.asset(
                                    'assets/images/top/full-share-1 copy 13.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Theme.of(context).backgroundColor,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Biography',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Image.asset(
                                    'assets/images/top/full-share-1 copy 13.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.8,
                      mainAxisSpacing: 15,
                      padding: EdgeInsets.only(top: 15, left: 30, right: 15),
                      children: [
                        Card(
                          color: Theme.of(context).backgroundColor,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Biography',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Image.asset(
                                    'assets/images/top/Biography.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Theme.of(context).backgroundColor,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Bussiness',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Image.asset(
                                    'assets/images/top/Business-1.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.8,
                      mainAxisSpacing: 15,
                      padding: EdgeInsets.only(top: 15, left: 30, right: 15),
                      children: [
                        Card(
                          color: Theme.of(context).backgroundColor,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Biography',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Image.asset(
                                    'assets/images/top/Biography.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Theme.of(context).backgroundColor,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Bussiness',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Flexible(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Image.asset(
                                    'assets/images/top/Business-1.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
