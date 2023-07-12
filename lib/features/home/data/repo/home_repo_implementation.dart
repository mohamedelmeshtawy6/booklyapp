import 'package:booklyapp/errors/failure.dart';
import 'package:booklyapp/features/home/data/model/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomePepoImplementation implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestsellBooks() {
    // TODO: implement fetchBestsellBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchImageBooks() {
    // TODO: implement fetchImageBooks
    throw UnimplementedError();
  }
}
