import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/components/app_bar/simple_app_bar.dart';
import 'package:next_starter/presentation/routes/app_router.dart';

import 'drawer_list_item.dart';

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
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: (safeArea.top + 24).verticalSpace),
            const SliverToBoxAdapter(
              child: SimpleAppBar(title: 'Profile'),
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
                  DrawerListItem(
                    label: 'Account',
                    icon: Icons.person_outline_rounded,
                    onTap: () =>
                        locator<AppRouter>().push(const ProfileRoute()),
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
                        locator<FirebaseAuth>().signOut();
                        locator<AppRouter>().replace(LoginRoute());
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
