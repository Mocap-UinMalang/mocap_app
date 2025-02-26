import 'package:flutter/material.dart';
import 'package:mocap_app/src/core/router/app_router.dart';
import 'package:mocap_app/src/core/utils/injections.dart';
import 'src/features/Profile/Page/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Mocap App',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   onGenerateRoute: AppRouter.onGenerateRoute,
    //   initialRoute: AppRouter.initialRoute,
    // );

    return const MaterialApp(home: Profile());
  }
}


