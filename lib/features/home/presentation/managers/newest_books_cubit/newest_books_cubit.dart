import 'package:bookly_app/features/home/use_cases/fetch_newest_books_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain_layer/entities/book_entity.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  NewestBooksCubit(super.initialState, this.fetchNewestBooksUseCase);
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksInitial());
    var result = await fetchNewestBooksUseCase.call();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.message));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
