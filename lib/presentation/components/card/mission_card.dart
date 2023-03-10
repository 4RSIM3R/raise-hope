import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MissionCard extends StatelessWidget {
  const MissionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width - 16,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(color: Colors.grey[200]!, offset: Offset(3, 3), blurRadius: 5),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 125,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          8.verticalSpace,
          Text("Bantu Ilzam Mencari Jodoh", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          Text("WRI Foundation", style: TextStyle(fontSize: 14, color: Colors.grey)),
          8.verticalSpace,
          Row(
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: Colors.grey[300],
                  semanticsLabel: 'Linear progress indicator',
                ),
              ),
              12.horizontalSpace,
              Text("50%", style: TextStyle(fontSize: 12, color: Colors.grey))
            ],
          ),
          8.verticalSpace,
          Row(
            children: [
              Icon(CupertinoIcons.time, size: 16, color: Colors.grey),
              2.horizontalSpace,
              Text("12 Days Left", style: TextStyle(fontSize: 12, color: Colors.grey))
            ],
          )
        ],
      ),
    );
  }
}
