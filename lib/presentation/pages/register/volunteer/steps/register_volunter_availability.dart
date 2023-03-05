import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_starter/common/enums/name_of_time_day.dart';
import 'package:next_starter/common/extensions/extensions.dart';

import '../cubit/register_volunteer_cubit.dart';

class RegisterVolunteerAvailability extends StatefulWidget {
  const RegisterVolunteerAvailability({super.key});

  static List<String> dayOfWeeks = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  @override
  State<RegisterVolunteerAvailability> createState() =>
      _RegisterVolunteerAvailabilityState();
}

class _RegisterVolunteerAvailabilityState
    extends State<RegisterVolunteerAvailability> {
  final List<int> _selectedDays = [];
  final List<NameOfTimeDay> _selectedTime = [];

  @override
  void initState() {
    super.initState();

    final currentData = context.read<RegisterVolunteerCubit>().state.data;

    if (currentData.daysOfWeekAvailable != null) {
      _selectedDays.addAll(currentData.daysOfWeekAvailable!);
    }

    if (currentData.preferedTime != null) {
      final timeIndexes = currentData.preferedTime!
          .map(
              (e) => NameOfTimeDay.values.indexWhere((element) => element == e))
          .toList();

      _selectedTime.addAll(timeIndexes.map((e) => NameOfTimeDay.values[e]));
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
          Text(
            "Days of the week you're available",
            style: context.textTheme.bodySmall,
          ),
          17.verticalSpace,
          SizedBox(
            width: double.infinity,
            child: Wrap(
              spacing: 8.sp,
              children: List.generate(
                RegisterVolunteerAvailability.dayOfWeeks.length,
                (index) => _buildChip(
                  index: index,
                  title: RegisterVolunteerAvailability.dayOfWeeks[index],
                  onTap: _onTapDay,
                  isSelected: _selectedDays.contains(index),
                ),
              ).toList(),
            ),
          ),
          32.verticalSpace,
          Text(
            "Preferred time",
            style: context.textTheme.bodySmall,
          ),
          17.verticalSpace,
          SizedBox(
            width: double.infinity,
            child: Wrap(
              spacing: 8.sp,
              children: List.generate(
                NameOfTimeDay.values.length,
                (index) {
                  final name = NameOfTimeDay.values[index];

                  return _buildChip(
                    index: index,
                    title: name.name.titleCase,
                    onTap: _onTapTime,
                    isSelected: _selectedTime.contains(name),
                  );
                },
              ).toList(),
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
                  onPressed: () => _save().nextStep(),
                  child: const Text("Next"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChip({
    required int index,
    required String title,
    required Function(int) onTap,
    required bool isSelected,
  }) {
    return ActionChip(
      onPressed: () => onTap(index),
      label: Text(title),
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
  }

  RegisterVolunteerCubit _save() {
    return context.read<RegisterVolunteerCubit>()
      ..updateAvailability(
        daysOfWeekAvailable: _selectedDays,
        preferedTime: _selectedTime,
      );
  }

  void _onTapTime(int index) {
    final name = NameOfTimeDay.values[index];
    setState(() {
      if (_selectedTime.contains(name)) {
        _selectedTime.remove(name);
      } else {
        _selectedTime.add(name);
      }
    });

    _save();
  }

  void _onTapDay(int index) {
    setState(() {
      if (_selectedDays.contains(index)) {
        _selectedDays.remove(index);
      } else {
        _selectedDays.add(index);
      }
    });

    _save();
  }
}
