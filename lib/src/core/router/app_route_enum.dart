enum AppRouteEnum {
    splashScreen,
    onBoarding,
    login,
    home,
    //profile
    profile,
    about,
    //post
    post,
    newPost,
    //Organization Structure
    organizationStructure,
    member,
    detailMember,
    //courses
    courses,
    detailCourse,
}

extension AppRouterExtension on AppRouteEnum {

  //Routes Name
    String get name {
        switch (this) {
            case AppRouteEnum.splashScreen:
                return 'splashScreen';
            case AppRouteEnum.onBoarding:
                return 'onBoarding';
            case AppRouteEnum.login:
                return 'login';
            case AppRouteEnum.home:
                return 'home';
            // profile
            case AppRouteEnum.profile:
                return 'profile';
            case AppRouteEnum.about:
                return 'about';
            // post
            case AppRouteEnum.post:
                return 'post';
            case AppRouteEnum.newPost:
                return 'newPost';
            // Organization Structure
            case AppRouteEnum.organizationStructure:
                return 'organizationStructure';
            case AppRouteEnum.member:
                return 'member';
            case AppRouteEnum.detailMember:
                return 'detailMember';
            // courses
            case AppRouteEnum.courses:
                return 'courses';
            case AppRouteEnum.detailCourse:
                return 'detailCourse';
        }
    }

    //Routes Path
    String get path {
        switch (this) {
            case AppRouteEnum.splashScreen:
                return '/splashScreen';
            case AppRouteEnum.onBoarding:
                return '/onBoarding';
            case AppRouteEnum.login:
                return '/login';
            case AppRouteEnum.home:
                return '/home';
            //profile
            case AppRouteEnum.profile:
                return '/profile';
            case AppRouteEnum.about:
                return '/about';
            //post
            case AppRouteEnum.post:
                return '/post';
            case AppRouteEnum.newPost:
                return '/newPost';
            // Organization Structure
            case AppRouteEnum.organizationStructure:
                return '/organizationStructure';
            case AppRouteEnum.member:
                return '/member';
            case AppRouteEnum.detailMember:
                return '/detailMember';
            // courses
            case AppRouteEnum.courses:
                return '/courses';
            case AppRouteEnum.detailCourse:
                return '/detailCourse';
        }
    }
}