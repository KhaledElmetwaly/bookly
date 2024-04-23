import 'package:bookly_app/features/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SafeArea(
            child: BookDetailsCustomAppbar(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * .1),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            "The joker (2019)",
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text("The joker (2019)",
              style: Styles.textStyle18.copyWith(
                  color: Colors.white.withOpacity(.7),
                  fontWeight: FontWeight.w400,
                  
                  fontStyle: FontStyle.italic)),
          const BookRate()
        ],
      ),
    );
  }
}
