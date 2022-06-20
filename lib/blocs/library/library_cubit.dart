import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:share_book/repositories/books_repo.dart';

part 'library_state.dart';

class LibraryCubit extends Cubit<LibraryState> {
  LibraryCubit(this.repo) : super(LibraryInitial());
  final BooksRepo repo;
  void getLibraryBooks() {
    emit(LibraryBooksLoading());
    final _generalLibraryBooks = repo.getBooks();
    final _newBooks = _generalLibraryBooks.reversed.take(2);
    final _mostViewed = _generalLibraryBooks.take(4);
    Future.delayed(Duration(seconds: 1));
    log('loaded');
    emit(LibraryBooksLoaded(
      generalLibraryBooks: _generalLibraryBooks,
      mostViewedLibraryBooks: _mostViewed.toList(),
      newLibraryBooks: _newBooks.toList(),
    ));
  }
}
