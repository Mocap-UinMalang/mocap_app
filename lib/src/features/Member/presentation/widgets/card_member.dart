import 'package:flutter/material.dart';
import 'package:mocap_app/src/core/theme/app_color.dart';

class CardMember extends StatelessWidget {
  final String name;
  final String subTitle;
  final String img;

  const CardMember({super.key, required this.name, required this.subTitle, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(color: AppColor.cardPrimary, borderRadius: BorderRadius.all(Radius.circular(10))),
      width: 320,
      height: 76,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: 48, height: 48, decoration: BoxDecoration(shape: BoxShape.circle), clipBehavior: Clip.hardEdge, child: Image.network(img)),
          SizedBox(width: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              Text(subTitle, style: TextStyle(fontSize: 14, color: AppColor.textSecondary)),
            ],
          ),
        ],
      ),
    );
  }
}
