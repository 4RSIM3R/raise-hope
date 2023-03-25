import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/presentation/components/buttons/box_icon_button.dart';
import 'package:next_starter/presentation/pages/mission/components/image_carousel.dart';
import 'package:next_starter/presentation/pages/mission/components/mission_detail_information.dart';

class MissionDetailPage extends StatefulWidget {
  final String? heroTag;

  const MissionDetailPage({
    super.key,
    this.heroTag,
  });

  @override
  State<MissionDetailPage> createState() => _MissionDetailPageState();
}

class _MissionDetailPageState extends State<MissionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: context.colorScheme.background,
            leadingWidth: 0,
            automaticallyImplyLeading: false,
            toolbarHeight: 24 * 2 + 14,
            titleSpacing: 0,
            pinned: true,
            surfaceTintColor: Colors.transparent,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22) +
                  const EdgeInsets.only(bottom: 22),
              child: SafeArea(
                child: Row(
                  children: const [
                    BoxIconButton(
                      icon: Icon(Icons.arrow_back_rounded),
                    ),
                    Spacer(),
                    BoxIconButton(
                      icon: Icon(Icons.share_rounded),
                    ),
                  ],
                ),
              ),
            ),
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: SizedBox(
                height: 400,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  child: ImageCarousel(
                    heroTag: widget.heroTag,
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  24.verticalSpace,
                  Text(
                    "Food and Beverages",
                    style: context.textTheme.titleSmall!.apply(
                      fontWeightDelta: 2,
                      color: context.colorScheme.primary,
                    ),
                  ),
                  8.verticalSpace,
                  Text(
                    "Help hungry people eat at this area!",
                    style: context.textTheme.titleLarge!.apply(
                      fontWeightDelta: 2,
                      color: context.colorScheme.onSurface,
                    ),
                  ),
                  10.verticalSpace,
                  _buildCreator(),
                  26.verticalSpace,
                  _buildMissionDetailInformations(),
                  26.verticalSpace,
                  Text(
                    'Your support and contribution will go along way in providing meals for those who are struggling to put food on the table. Together, we can creaate a brighter future for everyone.',
                    style: context.textTheme.bodySmall!.apply(
                      color: context.colorScheme.onSurface.withOpacity(0.5),
                    ),
                  ),
                  38.verticalSpace,
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.play_arrow_outlined),
                          8.horizontalSpace,
                          const Text("Start Mission"),
                        ],
                      ),
                    ),
                  ),
                  24.verticalSpace,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMissionDetailInformations() {
    return Row(
      children: [
        const Expanded(
          child: MissionDetailInformation(
            icon: Icons.person_outline_rounded,
            title: "Target Volunteer",
            message: "24 People",
          ),
        ),
        14.horizontalSpace,
        const Expanded(
          child: MissionDetailInformation(
            icon: Icons.person_outline_rounded,
            title: "Until",
            message: "1 - 31 March 2023",
          ),
        ),
      ],
    );
  }

  Widget _buildCreator() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 20,
          backgroundImage:
              CachedNetworkImageProvider('https://picsum.photos/300/300'),
        ),
        8.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hungger Community",
              style: context.textTheme.bodySmall!.apply(
                fontWeightDelta: 2,
                color: context.colorScheme.onSurface,
              ),
            ),
            5.horizontalSpace,
            Text(
              "Malang, Indonesia",
              style: context.textTheme.bodySmall!.apply(
                color: context.colorScheme.onSurface.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
