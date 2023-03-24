import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/presentation/theme/theme.dart';

class KarmaCard extends StatefulWidget {
  const KarmaCard({super.key});

  @override
  State<KarmaCard> createState() => _KarmaCardState();
}

class _KarmaCardState extends State<KarmaCard> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isShow = !isShow;
        });
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: const Offset(3, 3),
              color: Colors.grey[50]!,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider("https://cdn-icons-png.flaticon.com/512/4752/4752781.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                12.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Level 1 Barefoot", style: CustomTextTheme.paragraph3),
                      Text("In Progress", style: CustomTextTheme.paragraph1.copyWith(color: Colors.grey)),
                    ],
                  ),
                ),
                12.horizontalSpace,
                isShow ? Icon(CupertinoIcons.chevron_up, size: 20) : Icon(CupertinoIcons.chevron_down, size: 20)
              ],
            ),
            12.verticalSpace,
            LinearProgressIndicator(
              value: 0.2,
              backgroundColor: Colors.grey[300],
              semanticsLabel: 'Linear progress indicator',
            ),
            12.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2 Task", style: CustomTextTheme.paragraph1.copyWith(color: Colors.blue)),
                Text("5", style: CustomTextTheme.paragraph1.copyWith(color: Colors.grey)),
              ],
            ),
            12.verticalSpace,
            isShow
                ? Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        title: Row(
                          children: [
                            Text(" • ", style: TextStyle(fontSize: 24)),
                            Text("Follow DD Instagram", style: CustomTextTheme.paragraph1),
                          ],
                        ),
                        trailing: Checkbox(
                          value: true,
                          onChanged: (val) {},
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        title: Row(
                          children: [
                            Text(" • ", style: TextStyle(fontSize: 24)),
                            Text("Follow DD Instagram", style: CustomTextTheme.paragraph1),
                          ],
                        ),
                        trailing: Checkbox(
                          value: true,
                          onChanged: (val) {},
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        title: Row(
                          children: [
                            Text(" • ", style: TextStyle(fontSize: 24)),
                            Text("Follow DD Instagram", style: CustomTextTheme.paragraph1),
                          ],
                        ),
                        trailing: Checkbox(
                          value: false,
                          onChanged: (val) {},
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        title: Row(
                          children: [
                            Text(" • ", style: TextStyle(fontSize: 24)),
                            Text("Follow DD Instagram", style: CustomTextTheme.paragraph1),
                          ],
                        ),
                        trailing: Checkbox(
                          value: false,
                          onChanged: (val) {},
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        title: Row(
                          children: [
                            Text(" • ", style: TextStyle(fontSize: 24)),
                            Text("Follow DD Instagram", style: CustomTextTheme.paragraph1),
                          ],
                        ),
                        trailing: Checkbox(
                          value: false,
                          onChanged: (val) {},
                        ),
                      )
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
