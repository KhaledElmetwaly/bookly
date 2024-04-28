// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/domain_layer/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../core/use_cases/use_case.dart';
import '../domain_layer/entities/book_entity.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;
  FetchNewestBooksUseCase(
    this.homeRepo,
  );

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
