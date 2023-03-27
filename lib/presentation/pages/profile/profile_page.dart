import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/components/app_bar/simple_app_bar.dart';
import 'package:next_starter/presentation/components/card/karma_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final safeArea = MediaQuery.of(context).padding;

    return Scaffold(
        body: Column(
      children: [
        (safeArea.top + 24).verticalSpace,
        const SimpleAppBar(title: 'Profile'),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: StreamBuilder(
            stream: locator<FirebaseAuth>().userChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 76 / 2,
                      backgroundColor: context.colorScheme.surfaceVariant,
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
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            snapshot.data?.email ?? "",
                            style: context.textTheme.bodySmall!.copyWith(
                              color: context.colorScheme.onSurface.withOpacity(
                                0.75,
                              ),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    8.horizontalSpace,
                    SizedBox(
                      width: 100,
                      child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        ),
                        child: const Text("Edit"),
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: KarmaCard(),
        ),
      ],
    ));
  }
}
