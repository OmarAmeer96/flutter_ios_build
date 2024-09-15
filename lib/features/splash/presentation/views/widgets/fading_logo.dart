import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_flow/core/utils/assets.dart';

class FadingLogo extends StatelessWidget {
  const FadingLogo({
    super.key,
    required this.opacityAnimation,
  });

  final Animation<double> opacityAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: opacityAnimation,
      builder: (context, _) {
        return Opacity(
          opacity: opacityAnimation.value,
          child: SvgPicture.asset(
            AssetsData.appLogo1Svg,
            height: 100.h,
          ),
        );
      },
    );
  }
}
