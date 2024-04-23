import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            scale: 2.5,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 28)),
        ],
      ),
    );
  }
}
