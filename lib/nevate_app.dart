import 'package:flutter/material.dart';

import 'package:nevate_portfolio/presentation/screens/main_screen.dart';

class NevateApp extends StatelessWidget {
  const NevateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
