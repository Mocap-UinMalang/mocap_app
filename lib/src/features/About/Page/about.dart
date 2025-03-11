import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "About this App",
            style: TextStyle(fontFamily: 'Rubik', fontSize: 23),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/images/about.svg",
                  width: 230,
                  height: 230,
                ),
                const SizedBox(height: 23),
                const Text(
                  "Introducing the Mobile Mocap Community App, where you can dive into the world of mobile programming, learn through curated courses, connect with like-minded members, and explore a vibrant community.\n\n⬛ EXPLORE COURSES: Unlock your potential with our comprehensive courses designed to enhance your mobile programming skills. From beginner-friendly introductions to advanced topics, our courses cover everything you need to know about mobile development using Flutter and VSCode.\n\n⬛ PERSONALIZED PROFILES: Create your unique profile and showcase your mobile programming journey. Customize your bio, highlight your skills, and connect with other members who share your passion for mobile development. Let your profile reflect your expertise and attract like-minded individuals.\n\n⬛ CONNECT & COLLABORATE: Engage in discussions, share ideas, and collaborate with fellow members. Whether you're seeking advice, looking for a programming partner, or simply want to connect with others in the community, our app provides a platform for networking and collaboration.\n\n⬛ ORGANIZATIONAL STRUCTURE: Gain insights into the Mobile Mocap Community's organizational structure. Explore the different teams and divisions that make up our community, understand their roles, and connect with key contributors. Get a deeper understanding of our community's inner workings.\n\n⬛ POST AND SHARE: Express yourself through posts, updates, and discussions. Share your progress, ask questions, and seek feedback from the community. It's your platform to share your projects, code snippets, and insights, while also staying updated on the latest trends and developments in the mobile programming world.\n\n⬛ STAY IN THE LOOP: Receive notifications about course updates, community events, and important announcements. Be the first to know about new learning resources, upcoming workshops, and exciting opportunities within the Mobile Mocap Community.\n\nEmbark on your mobile programming journey with the Mobile Mocap Community App. Join a thriving community, expand your knowledge through courses, connect with fellow developers, and unleash your full potential in the world of mobile programming. Let's learn, collaborate, and create together!\n\nDon’t forget to connect with us",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xFFEDFCF5),
                      child: SvgPicture.asset("assets/icons/ic_linkedin.svg"),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xFFEDFCF5),
                      child: SvgPicture.asset("assets/icons/ic_email.svg"),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xFFEDFCF5),
                      child: SvgPicture.asset("assets/icons/ic_instagram.svg"),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  "Nama Aplikasi",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4086A4),
                    fontFamily: 'Rubik',
                  ),
                ),
                const Text(
                  "Versi",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF4086A4),
                    fontFamily: 'Rubik',
                  ),
                ),
                Image.asset (
                  fit: BoxFit.contain,
                  "assets/images/logomocap.png",
                  width: 100,
                  height: 100,
                ),
                const Text(
                  "2023",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4086A4),
                    fontFamily: 'Rubik',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
