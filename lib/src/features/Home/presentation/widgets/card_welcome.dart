import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mocap_app/src/core/theme/app_color.dart';
import 'package:mocap_app/src/core/utils/constant/images.dart';

class CardWelcome extends StatelessWidget {
  const CardWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColor.cardShadow,
            blurRadius: 9,
            offset: Offset(0, 4),
          ),
        ],
      ),
      height: 150,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text(
                "Introducing the Mobile Community application",
                style: TextStyle(),
                maxLines: 3,
              ),
            ),
            Flexible(
              child: SvgPicture.asset(meetingIllustration, fit: BoxFit.contain),
            ),
          ],
        ),
      ),
    );
  }
}
