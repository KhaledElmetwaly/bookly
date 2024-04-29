import 'package:bookly_app/core/constants.dart';
import 'package:hive_flutter/adapters.dart';

import '../../domain_layer/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}
class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
var box=Hive.box<BookEntity>(kFeaturedBox);
return box.values.toList();


  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box=Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }

}