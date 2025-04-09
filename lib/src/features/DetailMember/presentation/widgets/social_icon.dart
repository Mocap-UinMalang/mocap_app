import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String? url; 

  const SocialIcon({super.key, required this.icon, this.url});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.teal.withOpacity(0.1),
        ),
        child: Icon(icon, size: 24, color: Colors.teal),
      ),
    );
  }
}