import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/presentation/routes/app_router.dart';

import 'components/app_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.builder(
      routes: const [
        HomeMainRoute(),
        HomeMissionRoute(),
        HomeDiscussionRoute(),
      ],
      builder: (ctx, child, controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          key: _key,
          drawer: const AppDrawer(),
          body: child[controller.activeIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.activeIndex,
            onTap: controller.setActiveIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.book), label: "Mission"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: "Discussion"),
            ],
          ),
        );
      },
    );
  }
}
