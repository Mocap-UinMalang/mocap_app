import 'package:flutter/material.dart';
import 'package:mocap_app/src/core/theme/app_color.dart';
import 'package:mocap_app/src/features/Member/presentation/widgets/card_member.dart';

class MemberPage extends StatelessWidget {
  const MemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cardSecondary,
      appBar: AppBar(
        backgroundColor: AppColor.cardSecondary,
        leading: Icon(Icons.arrow_back, size: 24),
        title: Text('Member', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => SizedBox(height: 16),
          itemBuilder:
              (context, index) =>
                  CardMember(name: "Member", subTitle: "Angkatan 22", img: "https://i.pinimg.com/736x/ef/b2/18/efb21890906b66a9f94c096a95dfdb79.jpg"),
        ),
      ),
    );
  }
}
