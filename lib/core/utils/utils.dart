import 'package:flutter/material.dart';

import 'package:nevate_portfolio/presentation/screens/home_screen.dart';

class BodyUtils {
  static const List<Widget> bodyScreen = [
    HomeScreen(),
    // About(),

    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
