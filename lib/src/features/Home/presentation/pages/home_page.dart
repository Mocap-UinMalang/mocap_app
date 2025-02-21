import 'package:flutter/material.dart';
import 'package:mocap_app/src/core/theme/app_color.dart';
import 'package:mocap_app/src/core/utils/constant/icons.dart';
import 'package:mocap_app/src/features/Home/presentation/widgets/card_feature.dart';
import 'package:mocap_app/src/features/Home/presentation/widgets/card_welcome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, User!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              'Welcome to the team!',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 16),
            CardWelcome(),
            Text("Feature"),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardFeature(
                          title: "Organizational Structure",
                          subtitle: "Team Hierarchy",
                          iconPath: organizationIcon,
                          onTap: () {},
                        ),
                        CardFeature(
                          title: "Courses",
                          subtitle: "Learning Path",
                          iconPath: coursesIcon,
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardFeature(
                          title: "Group Chat",
                          subtitle: "For Updates",
                          iconPath: groupChatIcon,
                          onTap: () {},
                        ),
                        CardFeature(
                          title: "Members",
                          subtitle: "Community Network",
                          iconPath: membersIcon,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
