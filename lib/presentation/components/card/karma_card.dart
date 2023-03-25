import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/presentation/components/progress_bar/rounded_progress_bar.dart';

import 'custom_card.dart';

class KarmaCard extends StatelessWidget {
  const KarmaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
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
    );
  }
}
