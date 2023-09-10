import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: theme.hintColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search_rounded,
              color: theme.hintColor.withOpacity(0.3),
            ),
            const SizedBox(width: 8),
            Text(
              "Поиск рифм",
              style: TextStyle(
                color: theme.hintColor.withOpacity(0.3),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ));
  }
}
