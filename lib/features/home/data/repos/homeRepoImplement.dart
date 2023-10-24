import 'package:booking_app/core/errors/failures.dart';
import 'package:booking_app/features/home/data/models/BookModel.dart';
import 'package:booking_app/features/home/data/repos/homeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/apiService.dart';

class HomRepoImplement implements HomeRepo{
  final ApiService apiService ;

  HomRepoImplement(this.apiService);
  @override

  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{
    try{
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest');
    List<BookModel> book = [];
    for(var item in data['items']){
      book.add(BookModel.fromJson(item));
    }
    return right(book);

    } on Exception catch(e){
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));

    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try{
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> book = [];
      for(var item in data['items']){
        book.add(BookModel.fromJson(item));
      }
      return right(book);

    } on Exception catch(e){
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));

    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }}