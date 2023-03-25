import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/extensions.dart';

class BoxIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onTap;

  const BoxIconButton({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: context.colorScheme.surface,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: icon is Icon
              ? Icon(
                  (icon as Icon).icon,
                  color: context.colorScheme.onSurface,
                )
              : icon,
        ),
      ),
    );
  }
}
