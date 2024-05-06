// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/features/home/presentation/managers/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/domain_layer/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturesBookListView extends StatefulWidget {
  const FeaturesBookListView({
    Key? key,
    required this.books,
  }) : super(key: key);
  final List<BookEntity> books;
  @override
  State<FeaturesBookListView> createState() => _FeaturesBookListViewState();
}

class _FeaturesBookListViewState extends State<FeaturesBookListView> {
  late ScrollController scrollController;
  int nextPage = 1;
  bool isLoading = false;
  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(_scrollController);
    super.initState();
  }

  void _scrollController() async {
    double currentPosition = scrollController.position.pixels;
    double maxScrollLength = scrollController.position.maxScrollExtent;
    if (currentPosition >= .7 * maxScrollLength) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<FeaturedBooksCubit>(context)
            .fetchFeaturedBooks(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .23,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: widget.books.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomBookImage(
            image: widget.books[index].image,
          ),
        ),
      ),
    );
  }
}
