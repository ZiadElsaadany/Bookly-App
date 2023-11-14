import 'package:bookly/features/home/data/models/book_model/BookModel.dart';

abstract class FeaturedBooksStates { }
class GetFeaturedBookInitial extends FeaturedBooksStates{ }
class GetFeaturedBookSuccess extends FeaturedBooksStates{
  final List<BookModel> books;
  GetFeaturedBookSuccess(
  {
    required this.books
}
      );
}
class GetFeaturedBookFailure extends FeaturedBooksStates{
  final String errorMessage ;
  GetFeaturedBookFailure(
      this.errorMessage
      );
}
class GetFeaturedBookLoading extends FeaturedBooksStates{ }
