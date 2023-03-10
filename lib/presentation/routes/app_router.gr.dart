// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
    RegisterVolunteerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterVolunteerPage(),
      );
    },
    RegisterInstitutionRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterInstitutionPage(),
      );
    },
    RegisterCongratulationRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterCongratulationRouteArgs>(
          orElse: () => const RegisterCongratulationRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: RegisterCongratulationPage(
          key: args.key,
          isInstitution: args.isInstitution,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: LoginPage(
          key: args.key,
          isInstitution: args.isInstitution,
        ),
      );
    },
    HomeMainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeMainPage(),
      );
    },
    HomeMissionRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeMissionPage(),
      );
    },
    HomeDiscussionRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeDiscussionPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding-page',
        ),
        RouteConfig(
          RegisterVolunteerRoute.name,
          path: '/register-volunteer-page',
        ),
        RouteConfig(
          RegisterInstitutionRoute.name,
          path: '/register-institution-page',
        ),
        RouteConfig(
          RegisterCongratulationRoute.name,
          path: '/register-congratulation-page',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/home-page',
          children: [
            RouteConfig(
              HomeMainRoute.name,
              path: '',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              HomeMissionRoute.name,
              path: 'home-mission-page',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              HomeDiscussionRoute.name,
              path: 'home-discussion-page',
              parent: HomeRoute.name,
            ),
          ],
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding-page',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [RegisterVolunteerPage]
class RegisterVolunteerRoute extends PageRouteInfo<void> {
  const RegisterVolunteerRoute()
      : super(
          RegisterVolunteerRoute.name,
          path: '/register-volunteer-page',
        );

  static const String name = 'RegisterVolunteerRoute';
}

/// generated route for
/// [RegisterInstitutionPage]
class RegisterInstitutionRoute extends PageRouteInfo<void> {
  const RegisterInstitutionRoute()
      : super(
          RegisterInstitutionRoute.name,
          path: '/register-institution-page',
        );

  static const String name = 'RegisterInstitutionRoute';
}

/// generated route for
/// [RegisterCongratulationPage]
class RegisterCongratulationRoute
    extends PageRouteInfo<RegisterCongratulationRouteArgs> {
  RegisterCongratulationRoute({
    Key? key,
    bool isInstitution = false,
  }) : super(
          RegisterCongratulationRoute.name,
          path: '/register-congratulation-page',
          args: RegisterCongratulationRouteArgs(
            key: key,
            isInstitution: isInstitution,
          ),
        );

  static const String name = 'RegisterCongratulationRoute';
}

class RegisterCongratulationRouteArgs {
  const RegisterCongratulationRouteArgs({
    this.key,
    this.isInstitution = false,
  });

  final Key? key;

  final bool isInstitution;

  @override
  String toString() {
    return 'RegisterCongratulationRouteArgs{key: $key, isInstitution: $isInstitution}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/home-page',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    bool isInstitution = false,
  }) : super(
          LoginRoute.name,
          path: '/login-page',
          args: LoginRouteArgs(
            key: key,
            isInstitution: isInstitution,
          ),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.isInstitution = false,
  });

  final Key? key;

  final bool isInstitution;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, isInstitution: $isInstitution}';
  }
}

/// generated route for
/// [HomeMainPage]
class HomeMainRoute extends PageRouteInfo<void> {
  const HomeMainRoute()
      : super(
          HomeMainRoute.name,
          path: '',
        );

  static const String name = 'HomeMainRoute';
}

/// generated route for
/// [HomeMissionPage]
class HomeMissionRoute extends PageRouteInfo<void> {
  const HomeMissionRoute()
      : super(
          HomeMissionRoute.name,
          path: 'home-mission-page',
        );

  static const String name = 'HomeMissionRoute';
}

/// generated route for
/// [HomeDiscussionPage]
class HomeDiscussionRoute extends PageRouteInfo<void> {
  const HomeDiscussionRoute()
      : super(
          HomeDiscussionRoute.name,
          path: 'home-discussion-page',
        );

  static const String name = 'HomeDiscussionRoute';
}
