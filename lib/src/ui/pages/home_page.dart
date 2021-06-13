import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: print,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: 0,
        backgroundColor: Colors.white,
        elevation: 100,
        selectedItemColor: Color.fromRGBO(226, 89, 148, 1),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            label: 'Discover',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Library',
            icon: Icon(Icons.local_library_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Wishlist',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Store',
            icon: Icon(Icons.storefront),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
