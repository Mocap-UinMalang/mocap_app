import 'package:flutter/material.dart';
import 'package:mocap_app/src/core/router/app_router.dart';
import 'package:mocap_app/src/core/utils/injections.dart';
import 'package:mocap_app/src/features/Organization/presentation/page/organization_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrganizationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

