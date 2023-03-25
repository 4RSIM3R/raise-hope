import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/routes/app_router.dart';

class SimpleAppBar extends StatelessWidget {
  final String title;

  const SimpleAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () => locator<AppRouter>().pop(),
          ),
          12.horizontalSpace,
          Text(
            title,
            style: context.textTheme.titleMedium!.apply(
              fontWeightDelta: 2,
            ),
          ),
        ],
      ),
    );
  }
}
