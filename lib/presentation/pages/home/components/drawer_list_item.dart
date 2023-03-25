import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/extensions.dart';

class DrawerListItem extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;
  final IconData icon;

  const DrawerListItem({
    super.key,
    this.onTap,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              8.horizontalSpace,
              Expanded(
                child: Text(
                  label,
                  style: context.textTheme.bodyMedium,
                ),
              ),
              8.horizontalSpace,
              const Icon(
                CommunityMaterialIcons.chevron_right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
