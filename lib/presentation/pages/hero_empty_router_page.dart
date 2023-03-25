// https://github.com/Milad-Akarie/auto_route_library/issues/418#issuecomment-803879037
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HeroEmptyRouterPage extends StatelessWidget {
  const HeroEmptyRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HeroControllerScope(
      controller: HeroController(),
      child: const AutoRouter(),
    );
  }
}
