
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMedia extends StatelessWidget {
  final String iconSvg;
  const SocialMedia({
    super.key,
    required this.iconSvg,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      
    },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xFFEDFCF5),
        child: SvgPicture.asset(iconSvg),
      ),
    );
  }
}
