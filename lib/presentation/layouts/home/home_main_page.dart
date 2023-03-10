import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/presentation/components/card/mission_card.dart';

class HomeMainPage extends StatelessWidget {
  const HomeMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(color: Colors.grey[200]!, offset: Offset(3, 3), blurRadius: 5),
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
                        Text("Muhammad Ilzam Mulkhaq", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                        Text("Jomblo Baik", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                  Icon(CupertinoIcons.heart_fill, color: Colors.blue)
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
                children: [
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
                    children: [
                      Text("2 Missions"),
                      Text("On Going!"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2 Missions"),
                      Text("On Going!"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2 Missions"),
                      Text("On Going!"),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("For You", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            Text("See All", style: TextStyle(fontSize: 14, color: Colors.blue)),
          ],
        ),
        12.verticalSpace,
        Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [1, 2, 3, 4, 5]
                .map(
                  (e) => Container(
                    child: Chip(label: Text("Category")),
                    margin: EdgeInsets.only(right: 8),
                  ),
                )
                .toList(),
          ),
        ),
        12.verticalSpace,
        MissionCard(),
      ],
    );
  }
}
