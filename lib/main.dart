import 'package:flutter/material.dart';
import 'package:mocap_app/src/core/router/app_router.dart';
import 'package:mocap_app/src/core/utils/injections.dart';
import 'package:mocap_app/src/features/Auth/presentation/page/auth_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Mocap',
      //TODO change theme later
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: AppRouter.router,
    );
  }
}

