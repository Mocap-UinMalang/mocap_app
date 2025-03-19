import 'package:flutter/material.dart';

import '../Widget/social_icon.dart';
import 'package:lucide_icons/lucide_icons.dart';


class DetailMemberPage extends StatelessWidget {
  const DetailMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:NetworkImage("https://koreanindo.net/wp-content/uploads/2023/05/Giselle-2-3-scaled.jpeg"),
                  fit: BoxFit.cover,
                )
              ),
            ),
            Positioned(
              top: 40,
              left: 16,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                )
              )
            ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Angelina",
                    style: TextStyle(
                      fontSize: 24, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 4),
                  Text("Angkatan 21",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("About", 
                    style: TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text("Anggota Divisi User Interface and Design", 
                    style: TextStyle(
                      fontSize: 16, 
                      color: Colors.grey
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     SocialIcon(
                        icon: LucideIcons.linkedin,
                      ),
                      SizedBox(width: 20,),
                      SocialIcon(
                        icon: LucideIcons.mail,
                      ),
                      SizedBox(width: 20,),
                      SocialIcon(
                        icon: LucideIcons.instagram,
                      ),
                    ],),
                ],
              ),
            )
          )
      ],),
    );
  }
} 