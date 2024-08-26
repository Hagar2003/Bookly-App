part of 'similar_boooks_cubit.dart';

@immutable
sealed class SimilarBoooksState {}

final class SimilarBoooksInitial extends SimilarBoooksState {}


final class SimilarBooksSuccess extends SimilarBoooksState {
  final List<BookModel> book;
  SimilarBooksSuccess(this.book);
}
final class SimilarBooksFailure extends SimilarBoooksState {
  final String errMessage;
  SimilarBooksFailure(this.errMessage);
}
final class SimilarBooksLoading extends SimilarBoooksState {}