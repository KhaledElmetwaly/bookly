import 'package:bookly_app/core/widgets/custom_fadding_widget.dart';
import 'package:flutter/material.dart';

import 'custom_book_image_loading_indicator.dart';

class FeaturedBooksListViewLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFaddingWidget(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .23,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomBookImageLoadingIndicator()),
        ),
      ),
    );
  }
}
