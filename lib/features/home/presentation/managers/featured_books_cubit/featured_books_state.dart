// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksPagginationLoading extends FeaturedBooksState {}

class FeaturedBooksPagginationFailure extends FeaturedBooksState {
  final String errorMessage;
  const FeaturedBooksPagginationFailure({
    required this.errorMessage,
  });
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;
  const FeaturedBooksFailure(
    this.errorMessage,
  );
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> books;
  const FeaturedBooksSuccess(this.books);
}
