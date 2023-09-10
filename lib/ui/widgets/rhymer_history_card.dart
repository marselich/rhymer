import 'package:flutter/material.dart';
import 'package:rhymer/ui/ui.dart';

class RhymerHistoryCard extends StatelessWidget {
  const RhymerHistoryCard({
    super.key,
    required this.rhymers,
  });

  final List<String> rhymers;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Слово",
            style: theme.textTheme.bodyLarge
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          Flexible(
            child: Text(
              rhymers.asMap().entries.map((e) {
                final sb = StringBuffer();
                sb.write(e.value);
                if (e.key != rhymers.length - 1) {
                  sb.write(", ");
                }
                return sb.toString();
              }).join(),
              overflow: TextOverflow.clip,
              maxLines: 4,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 13,
                color: theme.hintColor.withOpacity(0.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
