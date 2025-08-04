import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nevate_portfolio/core/res/responsive.dart';
import 'package:nevate_portfolio/presentation/screens/home_screen.dart';
import 'package:nevate_portfolio/presentation/screens/widgets/body.dart';
import 'package:nevate_portfolio/theme/app_theme.dart';
import 'package:nevate_portfolio/widgets/portfolio_buttton.dart';
import 'package:provider/provider.dart';

import '../../core/providers/drawer_provider.dart';
import '../../core/utils/navbar_utils.dart';

import '../../widgets/navbar_action_button.dart';

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

  Widget _buildLaptopLayout(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderAreaSection(
              size: size,
            ),
            // HeroSection(size: size),
          ],
        ),
      ),
    );
  }

  Widget _buildTabletLayout(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Text("Tablet"),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Text("Mobile"),
      ),
    );
  }
}

Widget _buildAppBar(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return AppBarSection(size: size);
}

class NavbarDesktop extends StatefulWidget {
  const NavbarDesktop({super.key});

  @override
  State<NavbarDesktop> createState() => NavbarDesktopState();
}

class NavbarDesktopState extends State<NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // theme
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8, vertical: 10),
      color: Color(0XFF100E18),
      child: Row(
        children: [
          const NavBarLogo(),
          Spacer(),
          SingleChildScrollView(
            child: Row(
              children: List.generate(NavBarUtils.names.length, (index) {
                final value = NavBarUtils.names[index];
                return NavBarActionButton(label: value, index: index);
              }),
            ),
          ),
          // ...NavBarUtils.names.asMap().entries.map(
          //       (e) => NavBarActionButton(
          //         label: e.value,
          //         index: e.key,
          //       ),
          //     ),
          // Space.xm!,
          InkWell(
              onTap: () {
                // context.read<ThemeCubit>().updateTheme(!state.isDarkThemeOn);
              },
              child: Image.network(
                  // state.isDarkThemeOn
                  // ?
                  "https://img.icons8.com/external-glyphons-amoghdesign/64/000000/external-moon-weather-vol-01-glyphons-amoghdesign.png",
                  // : "https://img.icons8.com/ios/50/000000/sun--v1.png",
                  height: 30,
                  width: 30,
                  color:
                      // state.isDarkThemeOn ?
                      Colors.black
                  // : Colors.white,
                  )),
          // Space.xm!,
        ],
      ),
    );
  }
}

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);
    //
    var textSty = TextStyle(
      color: theme.textColor,
      fontWeight: FontWeight.w100,
      fontSize: Responsive.isDesktop(context) ? 32 : 20,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("< ", style: textSty),
        Text("iamporag", style: textSty),
        Text(
          Responsive.isDesktop(context) ? " />\t\t" : " />",
          style: textSty,
        )
      ],
    );
  }
}

class _NavBarTablet extends StatelessWidget {
  const _NavBarTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    var theme = Theme.of(context);
    return Container(
      color: theme.primaryColor,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? 10.w : 10, vertical: 10),
      child: Row(
        children: [
          IconButton(
            highlightColor: Colors.white54,
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          // Space.xm!,
          const NavBarLogo(),
          // Space.x1!,
        ],
      ),
    );
  }
}
