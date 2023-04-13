import 'package:animations/pages/home/widgets/fade_container.dart';
import 'package:animations/pages/home/widgets/home_top.dart';
import 'package:flutter/material.dart';

import 'animated_list_view.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;
  final Animation<Color?> fadeAnimation;

  StaggerAnimation({super.key, required this.controller})
      : containerGrow = CurvedAnimation(
          parent: controller,
          curve: Curves.ease,
        ),
        listSlidePosition = EdgeInsetsTween(
                begin: const EdgeInsets.only(bottom: 0),
                end: const EdgeInsets.only(bottom: 80))
            .animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.325,
              0.8,
              curve: Curves.ease,
            ),
          ),
        ),
        fadeAnimation = ColorTween(
          begin: Colors.green,
          end: Colors.green.withOpacity(0),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Curves.decelerate,
          ),
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: controller,
        builder: _buildAnimation,
      ),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.zero,
          children: [
            HomeTop(containerGrow: containerGrow),
            AnimatedListView(listSlidePosition: listSlidePosition),
          ],
        ),
        IgnorePointer(child: FadeContainer(fadeAnimation: fadeAnimation))
      ],
    );
  }
}
