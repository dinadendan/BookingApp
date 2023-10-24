import 'package:booking_app/features/home/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';

abstract class HomeRepo{

  Future< Either< Failure , List<BookModel >>> fetchFeaturedBooks();
  Future< Either< Failure , List<BookModel >>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});

}