import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nevate_portfolio/core/res/responsive.dart';
import 'package:nevate_portfolio/presentation/screens/home_screen.dart';
import 'package:nevate_portfolio/presentation/screens/widgets/body.dart';

import '../../widgets/portfolio_buttton.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Responsive(
          mobile: MobileAppBarSection(
            size: size,
          ),
          tablet: TabletAppBarSection(
            size: size,
          ),
          desktop: AppBarSection(
            size: size,
          ),
        ),
      ),
      endDrawer: Drawer(
        shape: Border(),
        backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(Icons.person, size: 40, color: Colors.blue),
                  ),
                  SizedBox(height: 10),
                  Text("User Name",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Text("user@example.com",
                      style: TextStyle(color: Colors.white70, fontSize: 14)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context); // Close Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.details),
              title: Text("About Me"),
              onTap: () {
                Navigator.pop(context); // Close Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: PortfolioButtonTablet(),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0XFF100E18),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0XFF12124D),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 50,
            bottom: 20,
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                color: Color(0XFF12124D),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                child: Container(),
              ),
            ),
          ),
          Body(),
        ],
      ),
    );
  }
}
