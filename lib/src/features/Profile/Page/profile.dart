import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mocap_app/src/core/utils/constant/icons.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Profile")),
      ),
      body: Center(
          child: Column(
        children: [
          const CircleAvatar(
            radius: 75,
          ),
          const Text(
            "\nBintang Syachriza Akbar",
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 5),
          const Text(
            "Angkatan 23",
            style: TextStyle(fontSize: 14, color: Color(0xFF666969)),
          ),
          const SizedBox(height: 5),
          const Text(
            "Sidoarjo",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 15),
          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(10),
            padding: EdgeInsets.all(9),
            strokeWidth: 2,
            color: Colors.purple,
            dashPattern: [15, 8],
            child: Container(
              padding: const EdgeInsets.all(20),
              width: 256,
              height: 92,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              //   // color: Colors.blue,
              //   border:
              //       Border.all(color: Colors.purple, style: BorderStyle),
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFFEDFCF5),
                    child: SvgPicture.asset(linkedinIcon),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFFEDFCF5),
                    child: SvgPicture.asset(emailIcon),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFFEDFCF5),
                    child: SvgPicture.asset(instagramIcon),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          Container(
            width: 320,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0x5fff6f6f6),
            ),
            child: Row(
              children: [
                Container(
                  height: 56,
                  width: 56,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFEDFCF5),
                  ),
                  child: SvgPicture.asset(profileIcon),
                ),
                const Text("\t    Edit Profile"),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Container(
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
                    color: const Color(0xFFEDFCF5),
                  ),
                  child: SvgPicture.asset(aboutIcon),
                ),
                const Text("\t     About"),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Container(
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
                    color: const Color(0xFFFCEDED),
                  ),
                  child: SvgPicture.asset(logoutIcon),
                ),
                const Text("\t    Logout"),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
