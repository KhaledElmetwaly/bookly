import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

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
        ],
      ),
    );
  }
}
