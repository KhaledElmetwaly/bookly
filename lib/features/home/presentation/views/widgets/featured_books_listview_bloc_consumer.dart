import 'package:bookly_app/features/home/domain_layer/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_listview_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/functions/error_snake_bar.dart';
import '../../managers/featured_books_cubit/featured_books_cubit.dart';

class FeaturedBooksListViewBlocConsumer extends StatefulWidget {
  const FeaturedBooksListViewBlocConsumer({
    super.key,
  });

  @override
  State<FeaturedBooksListViewBlocConsumer> createState() =>
      _FeaturedBooksListViewBlocConsumerState();
}

class _FeaturedBooksListViewBlocConsumerState
    extends State<FeaturedBooksListViewBlocConsumer> {
  final List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is FeaturedBooksPagginationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            errorSnakebar(state.errorMessage),
          );
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccess ||
            state is FeaturedBooksPagginationLoading ||
            state is FeaturedBooksPagginationFailure) {
          return FeaturesBookListView(
            books: books,
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMessage);
        } else {
          return const FeaturedBooksListViewLoadingIndicator();
        }
      },
    );
  }
}
