import 'package:flutter/material.dart';
import 'package:rhymer/ui/ui.dart';

class SettingsActionCard extends StatelessWidget {
  const SettingsActionCard({
    super.key,
    required this.title,
    required this.onTap,
    required this.iconData,
    this.iconColor,
  });

  final String title;
  final VoidCallback onTap;
  final IconData iconData;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: BaseContainer(
        margin: const EdgeInsets.symmetric(horizontal: 12).copyWith(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12)
            .copyWith(right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: theme.textTheme.bodyMedium?.copyWith(fontSize: 18),
            ),
            Icon(
              iconData,
              color: iconColor ?? theme.hintColor,
              size: 32,
            ),
          ],
        ),
      ),
    );
  }
}
