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
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
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
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}
