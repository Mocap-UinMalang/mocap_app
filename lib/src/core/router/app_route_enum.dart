enum AppRouteEnum {
    login,
    register,
    home,
    post,
    profile,
}

extension AppRouterExtension on AppRouteEnum {
    String get name {
        switch (this) {
            case AppRouteEnum.login:
                return '/login';
            case AppRouteEnum.register:
                return '/register';
            case AppRouteEnum.home:
                return '/home';
            case AppRouteEnum.post:
                return '/post';
            case AppRouteEnum.profile:
                return '/profile';
        }
    }
}