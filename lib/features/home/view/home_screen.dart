import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/router/app_router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final rhymers = List.generate(5, (i) => "Слово №$i");
    return AutoTabsRouter(
      routes: [
        SearchRoute(rhymers: rhymers),
        const FavoritesRoute(),
        const HistoryRoute(),
        const SettingsRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: theme.primaryColor,
            unselectedItemColor: theme.hintColor,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Поиск",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Избранное",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: "История",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Настройки",
              ),
            ],
          ),
        );
      },
    );
  }
}
