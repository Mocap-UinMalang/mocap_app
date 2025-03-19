import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mocap_app/src/core/utils/constant/icons.dart';
import 'package:mocap_app/src/features/Profile/widgets/ProfileMenu.dart';
import 'package:mocap_app/src/features/Profile/widgets/SocialMedia.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold))),
      ),
      body: Center(
          child: Column(
        children: [
          InkWell(onTap: () {
            
          },
            child: const CircleAvatar(
              radius: 75,
            ),
          ),
          const Text(
            "\nBintang Syachriza Akbar",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          const Text(
            "Angkatan 23",
            style: TextStyle(fontSize: 14, color: Color(0xFF666969)),
          ),
          const SizedBox(height: 5),
          const Text(
            "Sidoarjo",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF666969)),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialMedia(iconSvg: linkedinIcon,),
                  SocialMedia(iconSvg: emailIcon,),
                  SocialMedia(iconSvg: instagramIcon,),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          ProfileMenu(aboutIcon: aboutIcon, aboutText: "Profile", color: Color(0xFFEDFCF5),),
          const SizedBox(height: 25),
          ProfileMenu(aboutIcon: "", aboutText:"About" , color: const Color(0xFFEDFCF5),),
          const SizedBox(height: 25),
          ProfileMenu(aboutIcon: "", aboutText: "LogOut", color: const Color.fromARGB(255, 252, 237, 237),),
           
        ],
      )),
    );
  }
}
