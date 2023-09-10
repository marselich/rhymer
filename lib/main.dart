import 'package:flutter/material.dart';
import 'package:rhymer/router/app_router.dart';

import 'ui/ui.dart';

void main() {
  runApp(const RhymerApp());
}

class RhymerApp extends StatefulWidget {
  const RhymerApp({super.key});

  @override
  State<RhymerApp> createState() => _RhymerAppState();
}

class _RhymerAppState extends State<RhymerApp> {
  @override
  Widget build(BuildContext context) {
    final router = AppRouter();

    return MaterialApp.router(
      title: 'Rhymer',
      theme: themeData,
      routerConfig: router.config(),
    );
  }
}
