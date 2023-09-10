import 'package:flutter/material.dart';
import 'package:rhymer/ui/ui.dart';

class RhymerListCard extends StatelessWidget {
  const RhymerListCard({
    super.key,
    required this.rhyme,
    this.sourceWord,
    this.isFavorite = false,
  });

  final String rhyme;
  final String? sourceWord;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (sourceWord != null) ...[
                Text(
                  sourceWord!,
                  style: theme.textTheme.bodyLarge,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: theme.hintColor.withOpacity(0.4),
                  ),
                ),
              ],
              Text(
                rhyme,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
            color: isFavorite
                ? theme.primaryColor
                : theme.hintColor.withOpacity(0.2),
          ),
        ],
      ),
    );
  }
}
