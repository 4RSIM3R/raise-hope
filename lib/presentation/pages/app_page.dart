import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/presentation/theme/theme.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final _appRouter = locator<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return AdaptiveSizer(
      // from figma
      designSize: const Size(412, 852),
      builder: (_) => MaterialApp.router(
        title: 'Rise Hope',
        theme: AppStyles.lightTheme,
        darkTheme: AppStyles.darkTheme,
        themeMode: ThemeMode.light,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [
            MyObserver(),
          ],
        ),
      ),
    );
  }
}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('New route pushed: ${route.settings.name}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print('Tab route re-visited: ${route.name}');
  }
}
