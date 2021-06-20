import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_book/blocs/navigator/navigator_cubit.dart';
import 'package:share_book/src/ui/pages/discover_page.dart';
import 'package:share_book/src/ui/pages/library_page.dart';
import 'package:share_book/src/ui/pages/profile_page.dart';
import 'package:share_book/src/ui/pages/store_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  static const _pages = <Widget>[
    const DiscoverPage(),
    const LibraryPage(),
    const SizedBox(),
    const StorePage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigatorCubit>(
        create: (context) => NavigatorCubit(),
        child: BlocBuilder<NavigatorCubit, int>(
          builder: (context, index) {
            return Scaffold(
              backgroundColor: Colors.grey[50],
              body: _pages[index],
              bottomNavigationBar: BottomNavigationBar(
                onTap: context.read<NavigatorCubit>().changeBottomNavIndex,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                currentIndex: index,
                backgroundColor: Colors.white,
                selectedItemColor: Theme.of(context).primaryColor,
                unselectedItemColor:
                    Theme.of(context).shadowColor.withOpacity(0.5),
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
          },
        ));
  }
}
