import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rate.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .23,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.joker),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .5,
                  child: Text(
                    "Batman arkham knight",

                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                    // textAlign: TextAlign.center,

                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "J.k Rowling",
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99 \$',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const BookRate(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
