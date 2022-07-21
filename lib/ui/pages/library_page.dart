import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_book/blocs/library/library_cubit.dart';
import 'package:share_book/repositories/books_repo.dart';
import 'package:share_book/ui/widgets/lib_books_card.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);
  static const _tabs = [Text('General'), Text('New'), Text('Most Viewed')];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: BlocProvider(
        create: (context) =>
            LibraryCubit(context.read<BooksRepo>())..getLibraryBooks(),
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
              onTap: (value) => print(''),
            ),
          ),
          body: Column(
            children: [
              Flexible(
                child: BlocBuilder<LibraryCubit, LibraryState>(
                  builder: (context, state) {
                    if (state is LibraryBooksLoaded) {
                      return TabBarView(
                        children: [
                          _booksGridView(context, state.generalLibraryBooks),
                          _booksGridView(context, state.newLibraryBooks),
                          _booksGridView(context, state.mostViewedLibraryBooks),
                        ],
                      );
                    }
                    return Center(child: CircularProgressIndicator());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _booksGridView(BuildContext context, List<Map<String, String>> books) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 15,
      childAspectRatio: 0.8,
      mainAxisSpacing: 15,
      padding: EdgeInsets.only(top: 15, left: 30, right: 15),
      children: [
        for (var i = 0; i < books.length; i++) ...{
          LibBooksCard(book: books[i]),
        }
      ],
    );
  }
}
