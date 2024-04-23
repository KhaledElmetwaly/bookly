import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class FeaturesBookListView extends StatelessWidget {
  const FeaturesBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomBookImage(),
        ),
      ),
    );
  }
}
