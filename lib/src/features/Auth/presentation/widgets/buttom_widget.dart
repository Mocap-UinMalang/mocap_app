import 'package:flutter/material.dart';

class ButtomWidget extends StatelessWidget {
  final double height;
  final double width;
  const ButtomWidget({super.key, this.height = 60, this.width = 200});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
