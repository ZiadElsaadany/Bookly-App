import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/view_model/similar_cubit/similar_books_tates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SimilarCubit extends Cubit<SimilarStates> {
  SimilarCubit(this.homeRepo) : super(GetSimilarInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks(
  {
  required String category
}
      ) async {
    emit(GetSimilarLoading());
    var result = await homeRepo.fetchSimilar(
        category:category
    );

    // using fold --> because i use either
    result.fold(
            (failure) => emit(GetSimilarFailure(failure.errorMessage)),
            (books) => emit(GetSimilarSuccess(books: books))
    );

  }

}
