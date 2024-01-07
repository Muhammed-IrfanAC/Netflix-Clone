import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class SkeletonLoad extends StatelessWidget {
  final double width;
  final double height;
  const SkeletonLoad({this.width=double.infinity, this.height=200,super.key});

  @override
  Widget build(BuildContext context) {
    return SkeletonAnimation(
      shimmerColor: Colors.white24,
        child: Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
    ));
  }
}
