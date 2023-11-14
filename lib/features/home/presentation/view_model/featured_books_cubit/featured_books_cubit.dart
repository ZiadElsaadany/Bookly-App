import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(GetFeaturedBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(GetFeaturedBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    // using fold --> because i use either
    result.fold(
            (failure) => emit(GetFeaturedBookFailure(failure.errorMessage)),
        (books) => emit(GetFeaturedBookSuccess(books: books))
    );

  }

}
