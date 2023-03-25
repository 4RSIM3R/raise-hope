import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final safeArea = MediaQuery.of(context).padding;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Drawer(
        width: context.width,
        backgroundColor: context.colorScheme.background,
        shape: const RoundedRectangleBorder(),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: (safeArea.top + 24).verticalSpace),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_rounded),
                      onPressed: () => context.router.pop(),
                    ),
                    12.horizontalSpace,
                    Text(
                      'Profile',
                      style: context.textTheme.titleMedium!.apply(
                        fontWeightDelta: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: 24.verticalSpace),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: StreamBuilder(
                  stream: locator<FirebaseAuth>().userChanges(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Row(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.white,
                            child: snapshot.data?.photoURL != null
                                ? Image.network(snapshot.data!.photoURL!)
                                : const Icon(Icons.person),
                          ),
                          20.horizontalSpace,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data?.displayName ?? "",
                                  style: context.textTheme.bodyMedium!.apply(
                                    fontWeightDelta: 2,
                                  ),
                                ),
                                Text(
                                  snapshot.data?.email ?? "",
                                  style: context.textTheme.bodySmall!.copyWith(
                                    color: context.colorScheme.onSurface
                                        .withOpacity(
                                      0.75,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    } else {
                      return const Text("No user");
                    }
                  },
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  24.verticalSpace,
                  const DrawerListItem(
                    label: 'Account',
                    icon: Icons.person_outline_rounded,
                  ),
                  const DrawerListItem(
                    label: 'Request Help',
                    icon: Icons.notes_rounded,
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DrawerListItem(
                      label: 'Log Out',
                      icon: CommunityMaterialIcons.logout,
                      onTap: () async {
                        await locator<FirebaseAuth>().signOut();

                        if (context.mounted) context.router.pop();
                      },
                    ),
                    12.verticalSpace,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListItem extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;
  final IconData icon;

  const DrawerListItem({
    super.key,
    this.onTap,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              8.horizontalSpace,
              Expanded(
                child: Text(
                  label,
                  style: context.textTheme.bodyMedium,
                ),
              ),
              8.horizontalSpace,
              const Icon(
                CommunityMaterialIcons.chevron_right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
