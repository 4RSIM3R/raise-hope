import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/routes/app_router.dart';

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
            appBar: AppBar(
              backgroundColor: context.colorScheme.primary,
              leading: IconButton(
                onPressed: () {
                  _key.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu, color: Colors.white),
              ),
              title: const Text("Raise Hope",
                  style: TextStyle(color: Colors.white)),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.white),
                )
              ],
            ),
            drawer: const AppDrawer(),
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
                BottomNavigationBarItem(
                    icon: Icon(Icons.book), label: "Mission"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.people), label: "Discussion"),
              ],
            ),
          );
        });
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          StreamBuilder(
            stream: locator<FirebaseAuth>().userChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return UserAccountsDrawerHeader(
                  accountName: Text(
                    snapshot.data?.displayName ?? "",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  accountEmail: Text(
                    snapshot.data?.email ?? "",
                    style: const TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: snapshot.data?.photoURL != null
                        ? Image.network(snapshot.data!.photoURL!)
                        : const Icon(Icons.person),
                  ),
                );
              } else {
                return const Text("No user");
              }
            },
          ),
          // logout button
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            iconColor: context.colorScheme.error.withOpacity(0.75),
            textColor: context.colorScheme.error,
            onTap: () {
              locator<FirebaseAuth>().signOut();
              context.router.replace(LoginRoute());
            },
          ),
        ],
      ),
    );
  }
}
