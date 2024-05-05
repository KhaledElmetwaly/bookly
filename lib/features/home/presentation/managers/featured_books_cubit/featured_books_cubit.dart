import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain_layer/entities/book_entity.dart';
import 'package:bookly_app/features/home/use_cases/fetch_featured_books_usecase.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final FetchFeturedBookUseCase fetchFeturedBookUseCase;
  FeaturedBooksCubit(this.fetchFeturedBookUseCase)
      : super(FeaturedBooksInitial());
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await fetchFeturedBookUseCase.call();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
