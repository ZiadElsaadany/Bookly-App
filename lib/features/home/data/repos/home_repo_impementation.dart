import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

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
  var data =await apiService.get(endPoint: "?Filtering=free-ebooks&q=subject:computer science&Sorting=newest");
  List<BookModel> books =[ ];
   for(var item in data["items"]){
     books.add(BookModel.fromJson(item));
   }

   return right(books);
}
catch(e) {
if(e is DioException){
  
  return left(ServerFailure.fromDioError(e));

}
  return left(ServerFailure(
      e.toString()
  ));

}
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try {
      var data =await apiService.get(endPoint: "?Filtering=free-ebooks&q=subject:Programming");
      List<BookModel> books =[ ];
      for(var item in data["items"]){
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    }
    catch(e) {
      if(e is DioException){

        return left(ServerFailure.fromDioError(e));

      }
      return left(ServerFailure(
          e.toString()
      ));

    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilar(
  {
  required String category
}
      ) async {
    try {
      var data =await apiService.get(endPoint: "?Filtering=free-ebooks&q=subject:$category&Sorting=relevance");
      List<BookModel> books =[ ];
      for(var item in data["items"]){
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    }
    catch(e) {
      if(e is DioException){

        return left(ServerFailure.fromDioError(e));

      }
      return left(ServerFailure(
          e.toString()
      ));

    }
  }

}