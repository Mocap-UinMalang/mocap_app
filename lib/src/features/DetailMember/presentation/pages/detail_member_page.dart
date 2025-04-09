import 'package:flutter/material.dart';
import '../widgets/social_icon.dart';
import 'package:lucide_icons/lucide_icons.dart';

class DetailMemberPage extends StatelessWidget {
  const DetailMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Tambahkan scroll
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 420,
                  width: double.infinity, // Lebar penuh
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.jpg"),
                      fit: BoxFit.cover,
                    ),
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
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Angelina",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Angkatan 21",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "About",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Anggota Divisi User Interface and Design",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 200),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialIcon(icon: LucideIcons.linkedin),
                        SizedBox(width: 20),
                        SocialIcon(icon: LucideIcons.mail),
                        SizedBox(width: 20),
                        SocialIcon(icon: LucideIcons.instagram),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
