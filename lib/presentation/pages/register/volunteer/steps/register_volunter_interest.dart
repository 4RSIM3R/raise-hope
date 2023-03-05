import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_starter/common/extensions/context_extension.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/routes/app_router.dart';

import '../cubit/register_volunteer_cubit.dart';

class InterestData {
  IconData icon;
  String title;

  InterestData({
    required this.icon,
    required this.title,
  });
}

class RegisterVolunteerInterest extends StatefulWidget {
  const RegisterVolunteerInterest({super.key});

  static List<InterestData> interests = [
    InterestData(icon: CommunityMaterialIcons.palette, title: 'Arts'),
    InterestData(icon: CommunityMaterialIcons.school, title: 'Education'),
    InterestData(icon: CommunityMaterialIcons.sprout, title: 'Environment'),
    InterestData(icon: CommunityMaterialIcons.human_child, title: 'Children'),
    InterestData(icon: CommunityMaterialIcons.heart_pulse, title: 'Medical'),
    InterestData(icon: CommunityMaterialIcons.home_flood, title: 'Disaster'),
    InterestData(
        icon: CommunityMaterialIcons.wheelchair_accessibility,
        title: 'Disability'),
    InterestData(icon: CommunityMaterialIcons.hand_heart, title: 'Humanity'),
    InterestData(icon: CommunityMaterialIcons.account_group, title: 'Orphange'),
    InterestData(icon: CommunityMaterialIcons.dog, title: 'Animal'),
    InterestData(icon: CommunityMaterialIcons.drama_masks, title: 'Culture'),
  ];

  @override
  State<RegisterVolunteerInterest> createState() =>
      _RegisterVolunteerInterestState();
}

class _RegisterVolunteerInterestState extends State<RegisterVolunteerInterest> {
  final List<int> _selectedInterest = [];

  @override
  void initState() {
    super.initState();

    final currentData = context.read<RegisterVolunteerCubit>().state.data;

    if (currentData.interest != null) {
      final interestsIndexes = currentData.interest!
          .map((e) => RegisterVolunteerInterest.interests
              .indexWhere((element) => element.title == e))
          .toList();

      _selectedInterest.addAll(interestsIndexes);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<RegisterVolunteerCubit>().previousStep();
        return false;
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 24.sp,
            crossAxisSpacing: 24.sp,
            padding: EdgeInsets.zero,
            children: List.generate(
              RegisterVolunteerInterest.interests.length,
              _buildItem,
            ),
          ),
          52.verticalSpace,
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    context.read<RegisterVolunteerCubit>().previousStep();
                  },
                  child: const Text("Back"),
                ),
              ),
              16.horizontalSpace,
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    _save();

                    locator<AppRouter>().push(
                      RegisterCongratulationRoute(),
                    );
                  },
                  child: const Text("Finish"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Material _buildItem(int index) {
    return Material(
      color: _selectedInterest.contains(index)
          ? context.colorScheme.primary
          : context.colorScheme.surface,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () => _onInterestTap(index),
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: context.colorScheme.onSurface.withOpacity(0.12),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(12.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: FittedBox(
                    child: Icon(
                      RegisterVolunteerInterest.interests[index].icon,
                      color: _selectedInterest.contains(index)
                          ? context.colorScheme.onPrimary
                          : context.colorScheme.primary,
                    ),
                  ),
                ),
              ),
              8.verticalSpace,
              FittedBox(
                child: Text(
                  RegisterVolunteerInterest.interests[index].title,
                  style: context.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: _selectedInterest.contains(index)
                        ? context.colorScheme.onPrimary
                        : context.colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  RegisterVolunteerCubit _save() {
    return context.read<RegisterVolunteerCubit>()
      ..updateInterest(
        interest: _selectedInterest
            .map((e) => RegisterVolunteerInterest.interests[e].title)
            .toList(),
      );
  }

  void _onInterestTap(int index) {
    setState(() {
      if (_selectedInterest.contains(index)) {
        _selectedInterest.remove(index);
      } else {
        _selectedInterest.add(index);
      }
    });

    _save();
  }
}
