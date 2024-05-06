import 'package:flutter/material.dart';

class CustomFaddingWidget extends StatefulWidget {
  const CustomFaddingWidget({super.key, required this.child});

  final Widget child;

  @override
  State<CustomFaddingWidget> createState() => _CustomFaddingWidgetState();
}

class _CustomFaddingWidgetState extends State<CustomFaddingWidget>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    animation = Tween<double>(begin: .2, end: .8).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
    animationController.repeat(reverse: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: animation.value,
    );
  }

  @override
  dispose() {
    animationController.dispose();
    super.dispose();
  }
}
