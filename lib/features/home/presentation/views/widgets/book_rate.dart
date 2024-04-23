// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../../../../core/utils/styles.dart';

class BookRate extends StatelessWidget {
  const BookRate({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 16),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(3455)",
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
