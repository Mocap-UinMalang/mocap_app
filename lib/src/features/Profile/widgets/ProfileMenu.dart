
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenu extends StatelessWidget {
  final String aboutIcon;
  final String aboutText;
  final Color color;
  const ProfileMenu({
    super.key,
    required this.aboutIcon,
    required this.aboutText,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      
    },
      child: Container(
        width: 320,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFF6F6F6),
        ),
        child: Row(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color,
              ),
              child: SvgPicture.asset(aboutIcon),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(aboutText, style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
