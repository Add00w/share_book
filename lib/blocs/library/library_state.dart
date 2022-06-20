part of 'library_cubit.dart';

abstract class LibraryState extends Equatable {
  const LibraryState();
}

class LibraryInitial extends LibraryState {
  @override
  List<Object> get props => [];
}

class LibraryBooksLoading extends LibraryState {
  @override
  List<Object> get props => [];
}

class LibraryBooksLoaded extends LibraryState {
  final List<Map<String, String>> generalLibraryBooks;
  final List<Map<String, String>> newLibraryBooks;
  final List<Map<String, String>> mostViewedLibraryBooks;

  const LibraryBooksLoaded({
    required this.generalLibraryBooks,
    required this.mostViewedLibraryBooks,
    required this.newLibraryBooks,
  });

  @override
  List<Object> get props => [
        generalLibraryBooks,
        mostViewedLibraryBooks,
        newLibraryBooks,
      ];
}
