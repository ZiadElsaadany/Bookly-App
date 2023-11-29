
// Repository Pattern

// abstract class And All methods for this feature
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {

// get bestSeller Books
// get Feature Books
// determine methods (names only not how)

Future<Either< Failure ,List<BookModel>>> fetchBestSellerBooks( ) ;
Future<Either< Failure ,List<BookModel>>> fetchFeaturedBooks( ) ;
Future<Either< Failure ,List<BookModel>>> fetchSimilar(
    {
  required String category
}
    ) ;



}