import 'package:flutter/material.dart';
import 'package:mocap_app/src/core/utils/constant/images.dart';

class OrganizationItem extends StatelessWidget {

  final String name;
  final String position;
  
  const OrganizationItem({
    super.key, required this.name, required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(placeholderImage),
          ),
          Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
          Text(position),
        ],
      ),
    );
  }
}
