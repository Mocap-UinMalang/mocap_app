import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mocap_app/src/core/router/app_route_enum.dart';
import 'package:mocap_app/src/shared/presentation/pages/navigation_page.dart';

class AppRouter {
  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final _shellNavigatorHome = GlobalKey<NavigatorState>(
    debugLabel: 'Home',
  );

  // News
  static final _shellNavigatorPost = GlobalKey<NavigatorState>(
    debugLabel: 'Post',
  );

  // Notifications
  static final _shellNavigatorProfile = GlobalKey<NavigatorState>(
    debugLabel: 'Profile',
  );

  static GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRouteEnum.home.name,
    routes: [
      //Authentication
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRouteEnum.login.name,
        builder: (context, state) => Container(), //TODO Change Page (login)!
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRouteEnum.register.name,
        builder: (context, state) => Container(), //TODO Change Page (register)!
      ),
      //Main Page
      StatefulShellRoute.indexedStack(
        builder:
            (context, state, navigationShell) => NavigationPage(
              navigationShell: navigationShell,
              scaffoldKey: _scaffoldKey,
            ),
        branches: [
          //home index = 0
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHome,
            routes: [
              GoRoute(
                parentNavigatorKey: _shellNavigatorHome,
                path: AppRouteEnum.home.name,
                pageBuilder:
                    (context, state) => NoTransitionPage(child: Container()),
              ),
            ],
          ),
          //post index = 1
          StatefulShellBranch(
            navigatorKey: _shellNavigatorPost,
            routes: [
              GoRoute(
                parentNavigatorKey: _shellNavigatorPost,
                path: AppRouteEnum.post.name,
                pageBuilder:
                    (context, state) => NoTransitionPage(
                      child: Container(),
                    ), //TODO Change Page (post)!
              ),
            ],
          ),
          //profile index = 2
          StatefulShellBranch(
            navigatorKey: _shellNavigatorProfile,
            routes: [
              GoRoute(
                parentNavigatorKey: _shellNavigatorProfile,
                path: AppRouteEnum.profile.name,
                pageBuilder:
                    (context, state) => NoTransitionPage(child: Container()), //TODO Change Page (profile)!
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
