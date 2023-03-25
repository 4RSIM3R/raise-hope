import 'dart:math';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/extensions.dart';

class ChatTile extends StatelessWidget {
  final VoidCallback? onTap;

  const ChatTile({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 6.0,
            horizontal: 16,
          ),
          child: IntrinsicHeight(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://picsum.photos/seed/${Random().nextInt(100)}/48',
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover,
                  ),
                ),
                16.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Hunger Community Solver',
                              style: context.textTheme.titleSmall!.apply(
                                fontWeightDelta: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      4.verticalSpace,
                      Text(
                        'Thanks for your help!',
                        style: context.textTheme.labelSmall!.apply(
                          color: context.colorScheme.onSurface.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
                16.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    8.verticalSpace,
                    Text(
                      'Today',
                      style: context.textTheme.labelSmall!.apply(
                        color: context.colorScheme.onSurface.withOpacity(0.6),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        color: context.colorScheme.primary.withOpacity(0.15),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: FittedBox(
                          child: Text(
                            '1',
                            style: context.textTheme.labelSmall!.apply(
                              color: context.colorScheme.primary,
                              fontWeightDelta: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
