import 'package:bookly/features/home/data/models/book_model/BookModel.dart';

abstract class BestSellerBooksStates { }
class GetBestSellerBookInitial extends BestSellerBooksStates{ }
class GetBestSellerBookSuccess extends BestSellerBooksStates{
  final List<BookModel> books;
  GetBestSellerBookSuccess(
      {
        required this.books
      }
      );
}
class GetBestSellerBookFailure extends BestSellerBooksStates{
  final String errorMessage ;
  GetBestSellerBookFailure(
      this.errorMessage
      );
}
class GetBestSellerBookLoading extends BestSellerBooksStates{ }
