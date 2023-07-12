import 'package:booklyapp/errors/failure.dart';
import 'package:booklyapp/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestsellBooks();
  Future<Either<Failure, List<BookModel>>> fetchImageBooks();
}
