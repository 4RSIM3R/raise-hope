import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:next_starter/presentation/routes/app_router.dart';
import 'package:next_starter/presentation/theme/color_schemes.dart';
import 'package:next_starter/presentation/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  int _currentIndex = 0;

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
            key: _key,
            appBar: AppBar(
              backgroundColor: ColorSchemes.lightColorScheme.primary,
              leading: IconButton(
                onPressed: () {
                  _key.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu, color: Colors.white),
              ),
              title: Text("Raise Hope", style: TextStyle(color: Colors.white)),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: Colors.white),
                )
              ],
            ),
            drawer: Drawer(
              child: Container(),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: child[controller.activeIndex],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.activeIndex,
              onTap: controller.setActiveIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.book), label: "Mission"),
                BottomNavigationBarItem(icon: Icon(Icons.people), label: "Discussion"),
              ],
            ),
          );
        });
  }
}
