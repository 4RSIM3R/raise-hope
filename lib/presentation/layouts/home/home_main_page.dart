import 'dart:math';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:next_starter/common/enums/type_of_help.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/presentation/components/card/custom_card.dart';
import 'package:next_starter/presentation/components/card/mission_card.dart';
import 'package:next_starter/presentation/components/progress_bar/rounded_progress_bar.dart';
import 'package:next_starter/presentation/pages/home/home_page.dart';

import '../../routes/app_router.dart';

class HomeDashboardPage extends StatefulWidget {
  const HomeDashboardPage({super.key});

  @override
  State<HomeDashboardPage> createState() => _HomeDashboardPageState();
}

class _HomeDashboardPageState extends State<HomeDashboardPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const AppDrawer(),
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          _buildKarmaProgress(),
          _buildMissionStats(),
          _buildSectionTitle(title: 'For You'),
          _buildFilter(),
          _buildVerticalSpacer(),
          _buildMissionList(),
          _buildSectionTitle(title: 'Popular Mission'),
          _buildFilter(),
          _buildVerticalSpacer(),
          _buildMissionList(),
        ],
      ),
    );
  }

  Widget _buildMissionList() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 210,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => SizedBox(
            width: 160,
            child: MissionCard(
              heroTag: 'mission_${index}_${Random().nextInt(10000)}',
              onTap: (tag) {
                context.pushRoute(
                  MissionDetailRoute(
                    heroTag: tag,
                  ),
                );
              },
            ),
          ),
          separatorBuilder: (_, __) => 16.horizontalSpace,
        ),
      ),
    );
  }

  Widget _buildFilter() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 32,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: TypeOfHelp.values.length,
          itemBuilder: (context, index) {
            final isSelected = index == 0;

            return Chip(
              label: Text(TypeOfHelp.values[index].name),
              // material 2 style
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(999),
              ),

              side: BorderSide(
                color: isSelected
                    ? context.colorScheme.primary
                    : context.colorScheme.onBackground.withOpacity(0.2),
              ),
              backgroundColor: isSelected
                  ? context.colorScheme.primary
                  : context.colorScheme.background,
              labelStyle: context.textTheme.bodySmall!.copyWith(
                color: isSelected
                    ? context.colorScheme.onPrimary
                    : context.colorScheme.primary,
                fontWeight: FontWeight.w700,
              ),
            );
          },
          separatorBuilder: (_, __) => 10.horizontalSpace,
        ),
      ),
    );
  }

  Widget _buildSectionTitle({
    required String title,
    VoidCallback? onPressed,
  }) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            Text(
              title,
              style: context.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: context.colorScheme.onBackground.withOpacity(0.8),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: onPressed,
              child: Text(
                'See All',
                style: context.textTheme.bodyMedium!.copyWith(
                  color: context.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildMissionStats() {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _buildMissionCard(
                  value: 1,
                  title: 'Mission',
                  subtitle: 'On Going!',
                  color: context.colorScheme.primary,
                ),
              ),
              16.horizontalSpace,
              Expanded(
                child: _buildMissionCard(
                  value: 5,
                  title: 'Area',
                  subtitle: 'You\'ve helped!',
                  color: const Color(0xFFF19700),
                ),
              ),
              16.horizontalSpace,
              Expanded(
                child: _buildMissionCard(
                  value: 7,
                  title: 'Mission Plan',
                  subtitle: 'Planned!',
                  color: const Color(0xFF006E1C),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildKarmaProgress() {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverToBoxAdapter(
        child: CustomCard(
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/icon/charity.svg',
                width: 24,
                height: 24,
              ).pad(17),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '350 karma more for rewards',
                        style: context.textTheme.labelSmall!.apply(
                          fontWeightDelta: 2,
                        ),
                      ),
                      4.verticalSpace,
                      const RoundedLinearProgressBar(
                        value: 0.3,
                        color: Color(0xFFFF8985),
                        bgColor: Colors.transparent,
                      ),
                      4.verticalSpace,
                      Text(
                        'Karma Level 3',
                        style: context.textTheme.labelSmall!.apply(
                          fontWeightDelta: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      centerTitle: true,
      title: const Text(
        'Raise Hope',
        style: TextStyle(color: Colors.white),
      ),
      expandedHeight: 180,
      backgroundColor: context.colorScheme.primary,
      leading: IconButton(
        onPressed: () {
          _key.currentState?.openDrawer();
        },
        icon: Icon(Icons.menu, color: context.colorScheme.onPrimary),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_rounded,
              color: context.colorScheme.onPrimary),
        )
      ],
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        centerTitle: true,
        expandedTitleScale: 1,
        titlePadding: const EdgeInsets.only(left: 16, right: 16, bottom: 48),
        background: Stack(
          children: const [
            Positioned.fill(
              child: Image(
                image: AssetImage('assets/images/home_app_bar_bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 48,
              child: SizedBox(
                height: 44,
                child: TextField(
                  style: TextStyle(color: Colors.black45, fontSize: 14),
                  decoration: InputDecoration(
                    hintText: 'Search new mission...',
                    prefixIcon: Icon(Icons.search, color: Colors.black54),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMissionCard({
    required int value,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value.toString(),
              style: context.textTheme.labelLarge!.apply(
                fontWeightDelta: 2,
              ),
            ),
            4.verticalSpace,
            Text(
              title,
              style: context.textTheme.labelSmall!.apply(
                fontWeightDelta: 2,
              ),
            ),
            4.verticalSpace,
            Text(
              subtitle,
              style: context.textTheme.labelSmall!.apply(
                fontWeightDelta: 2,
                color: context.colorScheme.onSurface.withOpacity(0.6),
              ),
            ),
            8.verticalSpace,
            // make sure to use intrinsic height
            const Spacer(),
            Container(
              width: double.infinity,
              height: 4,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVerticalSpacer([int height = 20]) {
    return SliverToBoxAdapter(
      child: height.verticalSpace,
    );
  }
}
