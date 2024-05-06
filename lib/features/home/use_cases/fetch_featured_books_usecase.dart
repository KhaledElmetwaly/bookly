// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/domain_layer/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain_layer/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../core/use_cases/use_case.dart';

class FetchFeturedBookUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;
  FetchFeturedBookUseCase(
    this.homeRepo,
  );

  @override
  Future<Either<Failure, List<BookEntity>>> call([int pageNumber = 0]) async {
    return await homeRepo.fetchFeaturedBooks(pageNumber: pageNumber);
  }
}
