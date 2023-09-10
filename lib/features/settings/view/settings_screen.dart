import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/features/settings/widgets/settings_toggle_card.dart';

import '../widgets/settings_action_card.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            snap: true,
            floating: true,
            title: Text("Избранное"),
            surfaceTintColor: Colors.transparent,
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: SettingsToggleCard(
              title: "Темная тема",
              value: true,
              onChanged: (v) {},
            ),
          ),
          SliverToBoxAdapter(
            child: SettingsToggleCard(
              title: "Уведомления",
              value: true,
              onChanged: (v) {},
            ),
          ),
          SliverToBoxAdapter(
            child: SettingsToggleCard(
              title: "Разрешить аналитику",
              value: true,
              onChanged: (v) {},
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: SettingsActionCard(
              title: "Очистить историю",
              onTap: () {},
              iconData: Icons.delete_sweep,
              iconColor: Theme.of(context).primaryColor,
            ),
          ),
          SliverToBoxAdapter(
            child: SettingsActionCard(
              title: "Поддержка",
              onTap: () {},
              iconData: Icons.message_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
