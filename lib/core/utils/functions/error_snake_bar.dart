import 'package:flutter/material.dart';

import '../../../features/home/presentation/managers/featured_books_cubit/featured_books_cubit.dart';

SnackBar errorSnakebar(String errorMessage) {
  return SnackBar(
    backgroundColor: Colors.red,
    content: Text(
      errorMessage,
      style: const TextStyle(color: Colors.white),
    ),
  );
}
