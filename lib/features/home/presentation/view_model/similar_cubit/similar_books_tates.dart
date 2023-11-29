import 'package:bookly/features/home/data/models/book_model/BookModel.dart';

abstract class SimilarStates { }
class GetSimilarInitial extends SimilarStates{ }
class GetSimilarSuccess extends SimilarStates{
  final List<BookModel> books;
  GetSimilarSuccess(
      {
        required this.books
      }
      );
}
class GetSimilarFailure extends SimilarStates{
  final String errorMessage ;
  GetSimilarFailure(
      this.errorMessage
      );
}
class GetSimilarLoading extends SimilarStates{ }
