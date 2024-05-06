import 'package:bookly_app/features/home/domain_layer/entities/book_entity.dart';
import 'package:bookly_app/features/home/use_cases/fetch_featured_books_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final FetchFeturedBookUseCase fetchFeturedBookUseCase;
  FeaturedBooksCubit(this.fetchFeturedBookUseCase)
      : super(FeaturedBooksInitial());
  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FeaturedBooksLoading());
    } else {
      emit(FeaturedBooksPagginationLoading());
    }
    var result = await fetchFeturedBookUseCase.call(pageNumber);
    result.fold((failure) {
      if (pageNumber == 0) {
        emit(FeaturedBooksFailure(failure.message));
      } else {
        emit(FeaturedBooksPagginationFailure(errorMessage: failure.message));
      }
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
