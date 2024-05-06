import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_listview_bloc_consumer.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppbar(),
                FeaturedBooksListViewBlocConsumer(),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "New books",
                    style: Styles.textStyle18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: BestSellerListview(),
          )
        ],
      ),
    );
  }
}
