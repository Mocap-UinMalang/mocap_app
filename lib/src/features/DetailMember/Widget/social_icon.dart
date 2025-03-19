import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final IconData icon;

  const SocialIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.teal.withOpacity(0.1),
      ),
      child: Icon(icon, size: 24, color: Colors.teal),
    );
  }
}