import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/components/card/mission_card.dart';
import 'package:next_starter/presentation/routes/app_router.dart';

class HomeMainPage extends StatelessWidget {
  const HomeMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            locator<AppRouter>().push(const KarmaMainRoute());
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200]!,
                    offset: const Offset(3, 3),
                    blurRadius: 5),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            locator<FirebaseAuth>().currentUser?.displayName ??
                                "",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            locator<FirebaseAuth>().currentUser?.email ?? "",
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const Icon(CupertinoIcons.heart_fill, color: Colors.blue)
                  ],
                ),
                12.verticalSpace,
                LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: Colors.grey[300],
                  semanticsLabel: 'Linear progress indicator',
                ),
                12.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("50 Karma", style: TextStyle(color: Colors.blue)),
                    Text("100"),
                  ],
                ),
                8.verticalSpace,
                Divider(color: Colors.grey[300]),
                8.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("2 Missions"),
                        Text("On Going!"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("2 Missions"),
                        Text("On Going!"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("2 Missions"),
                        Text("On Going!"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("For You",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            Text("See All", style: TextStyle(fontSize: 14, color: Colors.blue)),
          ],
        ),
        12.verticalSpace,
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [1, 2, 3, 4, 5]
                .map(
                  (e) => Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: const Chip(label: Text("Category")),
                  ),
                )
                .toList(),
          ),
        ),
        12.verticalSpace,
        const MissionCard(),
      ],
    );
  }
}
