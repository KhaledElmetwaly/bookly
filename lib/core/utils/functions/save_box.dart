import 'package:hive_flutter/adapters.dart';

import '../../../features/home/domain_layer/entities/book_entity.dart';

void saveBoxData(List<BookEntity> books, String boxName) {
  var box = Hive.box<BookEntity>(boxName);

  box.addAll(books);
}
