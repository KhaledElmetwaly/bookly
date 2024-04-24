// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/domain_layer/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain_layer/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeturedBookUseCase {
  final HomeRepo homeRepo;
  FetchFeturedBookUseCase(
    this.homeRepo,
  );
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    return homeRepo.fetchFeaturedBooks();
  }
}
