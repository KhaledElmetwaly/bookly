import 'package:bookly_app/features/home/domain_layer/entities/book_entity.dart';

abstract class HomeRepo{
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchBNewestBooks();
}