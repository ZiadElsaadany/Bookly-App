import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_states.dart';


class BestSellerBooksCubit extends Cubit<BestSellerBooksStates> {
  BestSellerBooksCubit(this.homeRepo) : super(GetBestSellerBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBooks() async {
    emit(GetBestSellerBookLoading());
    var result = await homeRepo.fetchBestSellerBooks();

    // using fold --> because i use either
    result.fold(
            (failure) => emit(GetBestSellerBookFailure(failure.errorMessage)),
            (books) => emit(GetBestSellerBookSuccess(books: books))
    );

  }

}
