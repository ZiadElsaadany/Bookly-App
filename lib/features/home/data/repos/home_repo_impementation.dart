import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {

  final ApiService apiService ;
  HomeRepoImplementation(
  {
    required this.apiService
}
      );
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
try {
  var data =await apiService.get(endPoint: "?Filtering=free-ebooks&q=subject:Programming&Sorting=newest");
  List<BookModel> books =[ ];
   for(var item in data["items"]){
     books.add(BookModel.fromJson(item));
   }

   return right(books);
}catch(e) {
  return left(ServerFailure());

}
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

}