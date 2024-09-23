import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../themes/color_manager.dart';

class ShimmerWidget extends StatelessWidget {
  final Widget child;
  const ShimmerWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorManager.grey4,
      highlightColor: ColorManager.grey6,
      child: child,
    );
  }
}
