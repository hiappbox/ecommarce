import 'package:ecommarce_rafat/presentresion/ui/utility/assets_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class appbackgraound extends StatelessWidget {
  final Widget child;
  const appbackgraound({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SvgPicture.asset(AssetsImages.bgSVG,fit: BoxFit.cover,)),
        child
      ],
    );
  }
}