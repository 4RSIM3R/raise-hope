import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

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
            boxShadow: [
              BoxShadow(color: Colors.grey[200]!, offset: Offset(3, 3), blurRadius: 5),
            ],
          ),
          child: Text("Karma"),
        ),
        12.verticalSpace,
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[200]!, offset: Offset(3, 3), blurRadius: 5),
                  ],
                ),
                child: Text("Karma"),
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[200]!, offset: Offset(3, 3), blurRadius: 5),
                  ],
                ),
                child: Text("Karma"),
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[200]!, offset: Offset(3, 3), blurRadius: 5),
                  ],
                ),
                child: Text("Karma"),
              ),
            ),
          ],
        ),
        12.verticalSpace,
      ],
    );
  }
}
