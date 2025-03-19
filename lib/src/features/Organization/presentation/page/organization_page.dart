import 'package:flutter/material.dart';
import 'package:mocap_app/src/features/Organization/presentation/widgets/organization_item.dart';

import '../../../../core/utils/constant/images.dart';

class OrganizationPage extends StatelessWidget {
  const OrganizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Structure',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 2),
          const Text(
            'Kepengurusan 2022',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Image.asset(
            placeholderImage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {},
              ),
              Text("2021"),
              SizedBox(width: 180),
              Text("2023"),
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return OrganizationItem(name: 'Agus $index', position: 'lead $index',);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
