import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'featurd_books_state.dart';

class FeaturdBooksCubit extends Cubit<FeaturdBooksState> {
  FeaturdBooksCubit(this.homeRepo) : super(FeaturdBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturdBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturdBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeaturdBooksSuccess(books));
    });
  }
}
