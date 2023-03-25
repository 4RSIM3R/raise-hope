import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:next_starter/common/extensions/extensions.dart';

import 'custom_card.dart';

class MissionCard extends StatelessWidget {
  final String? heroTag;
  final Function(String? heroTag)? onTap;

  const MissionCard({
    super.key,
    this.heroTag,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: onTap != null ? () => onTap!(heroTag) : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final image = ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: 'https://picsum.photos/seed/1/500/500',
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  height: 120,
                  width: constraints.maxWidth,
                  fit: BoxFit.cover,
                ),
              );

              if (heroTag != null) {
                return Hero(
                  tag: heroTag!,
                  child: image,
                  flightShuttleBuilder: (
                    flightContext,
                    animation,
                    flightDirection,
                    fromHeroContext,
                    toHeroContext,
                  ) =>
                      (toHeroContext.widget as Hero).child,
                );
              }

              return image;
            },
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '5,81 km',
                  style: context.textTheme.bodySmall!.apply(
                    fontWeightDelta: 2,
                    color: context.colorScheme.onSurface.withOpacity(0.5),
                  ),
                ),
                const Spacer(),
                Text(
                  'Disaseter Earthquake Volunteer Needed!',
                  style: context.textTheme.bodySmall!.apply(
                    fontWeightDelta: 2,
                    color: context.colorScheme.onSurface.withOpacity(0.8),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icon/charity.svg',
                      height: 12,
                      width: 12,
                    ),
                    5.horizontalSpace,
                    Text(
                      '250+ Karma',
                      style: context.textTheme.bodySmall!.copyWith(
                        color:
                            context.colorScheme.onBackground.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ],
            ).pad(10),
          ),
        ],
      ),
    );
  }
}
