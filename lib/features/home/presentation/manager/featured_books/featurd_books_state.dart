part of 'featurd_books_cubit.dart';

@immutable
sealed class FeaturdBooksState {}

final class FeaturdBooksInitial extends FeaturdBooksState {}

final class FeaturdBooksLoading extends FeaturdBooksState {}

final class FeaturdBooksFailure extends FeaturdBooksState {
  final String erorMessage;

  FeaturdBooksFailure(this.erorMessage);
  
}

final class FeaturdBooksSuccess extends FeaturdBooksState {
  final List<BookModel> books;

  FeaturdBooksSuccess(this.books);
}
