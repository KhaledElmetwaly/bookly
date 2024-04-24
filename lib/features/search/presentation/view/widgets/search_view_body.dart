import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/best_seller_listview_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Search result",
            style: Styles.textStyle16,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListview()),
        ],
      ),
    );
  }
}

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BookListviewItem(),
        ),
      ),
    );
  }
}
