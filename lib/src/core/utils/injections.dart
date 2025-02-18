import 'package:get_it/get_it.dart';
import 'package:mocap_app/src/features/Auth/auth_injections.dart';
import 'package:mocap_app/src/features/Courses/course_injections.dart';
import 'package:mocap_app/src/features/Home/home_injections.dart';
import 'package:mocap_app/src/shared/app_injections.dart';

final sl = GetIt.instance;

/*
Calling all injection functions to be combined into a single function.
*/
initializeDependencies() async {
  initAppInjections();
  initAuthInjections();
  initHomeInjections();
  initCourseInjections();

  await sl.allReady();
}
