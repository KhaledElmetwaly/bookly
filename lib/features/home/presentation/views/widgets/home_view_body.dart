import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_listview.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(),
          FeaturesBookListView(),
          SizedBox(
            height: 30,
          ),
          Text(
            "Best seller",
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 10,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}
