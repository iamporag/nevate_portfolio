import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../widgets/portfolio_buttton.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double screenWidth = MediaQuery.of(context).size.width;

// Main number text (large text)
    final double largeText =
        screenWidth * 0.03; // adjust the multiplier as needed

// Description text (small text)
    final double smallText =
        screenWidth * 0.016; // adjust the multiplier as needed

    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: screenWidth * 0.02,
              ),
              Row(
                children: [
                  Expanded(
                    child: Transform.rotate(
                        angle: 0,
                        child: ClipRRect(
                          child: SvgPicture.asset(
                            "assets/icons/iamporag.svg",
                            height: 380,
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sakib Hasan".toUpperCase(),
                            style: TextStyle(
                              fontSize: largeText,
                              color: Colors.white,
                              fontFamily: "Outfit",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Creative",
                            textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false,
                              applyHeightToLastDescent: false,
                            ),
                            style: TextStyle(
                              fontSize: largeText * 1.6,
                              color: Colors.white,
                              fontFamily: "Outfit",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: screenWidth * 0.05,
                            child: ShaderMask(
                              shaderCallback: (_) => LinearGradient(
                                  colors: [
                                    Color(0XFFFB0182),
                                    Color(0XFFD21CE6),
                                    Color(0XFF2FACF7),
                                    Color(0XFF519FFC),
                                    Color(0XFF3934F1),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  stops: [
                                    0.0,
                                    0.37,
                                    0.68,
                                    0.77,
                                    1.0,
                                  ]).createShader(_),
                              child: AnimatedTextKit(
                                isRepeatingAnimation: true,
                                repeatForever: true,
                                animatedTexts: [
                                  TyperAnimatedText(
                                    "Flutter Developer",
                                    speed: const Duration(milliseconds: 50),
                                    textStyle: TextStyle(
                                      fontSize: largeText * 1.2,
                                      color: Colors.white,
                                      fontFamily: "Outfit",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    "Android App Developer",
                                    speed: const Duration(milliseconds: 50),
                                    textStyle: TextStyle(
                                      fontSize: largeText * 1.2,
                                      color: Colors.white,
                                      fontFamily: "Outfit",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    "IOS App Developer",
                                    speed: const Duration(milliseconds: 50),
                                    textStyle: TextStyle(
                                      fontSize: largeText * 1.2,
                                      color: Colors.white,
                                      fontFamily: "Outfit",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    "Web App Developer",
                                    speed: const Duration(milliseconds: 50),
                                    textStyle: TextStyle(
                                      fontSize: largeText * 1.2,
                                      color: Colors.white,
                                      fontFamily: "Outfit",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    "UI/UX Designer",
                                    speed: const Duration(milliseconds: 50),
                                    textStyle: TextStyle(
                                      fontSize: largeText * 1.2,
                                      color: Colors.white,
                                      fontFamily: "Outfit",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Professional",
                            textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false,
                              applyHeightToLastDescent: false,
                            ),
                            style: TextStyle(
                              fontSize: largeText,
                              color: Colors.white,
                              fontFamily: "Outfit",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por\nscientie, musica, sport etc, litot Europa usa li sam vocabular.",
                            style: TextStyle(
                              fontSize: smallText,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ResponsivePortfolioButton(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.02,
              ),
              Text(
                size.width.toString(),
                style: TextStyle(color: Colors.white),
              ),
              size.width > 1024
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width / 18),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                height: 175,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.white,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      final double iconSize =
                                          constraints.maxWidth *
                                              0.12; // responsive icon size
                                      final double spacing =
                                          constraints.maxWidth *
                                              0.04; // spacing between items
                                      final double largeText =
                                          constraints.maxWidth *
                                              0.08; // main number text
                                      final double smallText =
                                          constraints.maxWidth *
                                              0.05; // description text

                                      // Responsive values
                                      double avatarRadius =
                                          constraints.maxWidth *
                                              0.09; // avatar size
                                      double overlap = avatarRadius *
                                          1.3; // distance between avatars

                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "1,5K",
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontSize: largeText,
                                                  color: Colors.white,
                                                  fontFamily: "Outfit",
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.0,
                                                ),
                                              ),
                                              Text(
                                                "Happy Clients",
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontSize: smallText,
                                                  color: Colors.white,
                                                  fontFamily: "Outfit",
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),

                                          SizedBox(width: 20),

                                          // ⭐ Responsive avatar stack
                                          SizedBox(
                                            width:
                                                avatarRadius * 2 + overlap * 2,
                                            height: avatarRadius * 2,
                                            child: Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  child: CircleAvatar(
                                                    radius: avatarRadius,
                                                    child: CircleAvatar(
                                                      radius: avatarRadius - 3,
                                                      backgroundImage:
                                                          NetworkImage(
                                                        "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: overlap,
                                                  child: CircleAvatar(
                                                    radius: avatarRadius,
                                                    child: CircleAvatar(
                                                      radius: avatarRadius - 3,
                                                      backgroundImage:
                                                          NetworkImage(
                                                        "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: overlap * 2,
                                                  child: CircleAvatar(
                                                    radius: avatarRadius,
                                                    child: CircleAvatar(
                                                      radius: avatarRadius - 3,
                                                      backgroundImage:
                                                          NetworkImage(
                                                        "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                height: 175,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.white,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      final double iconSize =
                                          constraints.maxWidth *
                                              0.12; // responsive icon size
                                      final double spacing =
                                          constraints.maxWidth *
                                              0.04; // spacing between items
                                      final double largeText =
                                          constraints.maxWidth *
                                              0.08; // main number text
                                      final double smallText =
                                          constraints.maxWidth *
                                              0.05; // description text

                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          // ⭐ First item
                                          Row(
                                            children: [
                                              _GradientIconCircle(
                                                size: iconSize,
                                                icon: Icons.security,
                                              ),
                                              SizedBox(width: spacing / 1.2),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "100%",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Outfit",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: largeText,
                                                      height: 1.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Safety Privacy",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Outfit",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: smallText,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),

                                          SizedBox(width: spacing),

                                          // ⭐ Second item
                                          Row(
                                            children: [
                                              _GradientIconCircle(
                                                size: iconSize,
                                                icon: Icons.star,
                                              ),
                                              SizedBox(width: spacing / 1.2),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "98%",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Outfit",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: largeText,
                                                      height: 1.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Event Rating",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: "Outfit",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: smallText,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Expanded(
                              child: Container(
                                height: 175,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.white,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      final double largeText =
                                          constraints.maxWidth *
                                              0.08; // main number
                                      final double smallText =
                                          constraints.maxWidth *
                                              0.05; // description

                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "900+",
                                            style: TextStyle(
                                              fontSize: largeText,
                                              fontFamily: "Outfit",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              height: 1.0,
                                            ),
                                          ),
                                          Text(
                                            "Project Done",
                                            style: TextStyle(
                                              fontSize: smallText,
                                              fontFamily: "Outfit",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width / 18),
                      child: Center(
                        child: size.width > 900
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 175,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(24.0),
                                        child: LayoutBuilder(
                                          builder: (context, constraints) {
                                            // Responsive values
                                            double avatarRadius =
                                                constraints.maxWidth * 0.15;
                                            double overlap = avatarRadius * 1.6;
                                            final double largeText =
                                                constraints.maxWidth * 0.10;
                                            final double smallText =
                                                constraints.maxWidth * 0.08;

                                            return Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      "1,5K",
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                        fontSize: largeText,
                                                        color: Colors.white,
                                                        fontFamily: "Outfit",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        height: 1.0,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Happy Clients",
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                        fontSize: smallText,
                                                        color: Colors.white,
                                                        fontFamily: "Outfit",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                SizedBox(height: 10),

                                                // Responsive avatar stack
                                                SizedBox(
                                                  width: avatarRadius * 2 +
                                                      overlap * 2,
                                                  height: avatarRadius * 2,
                                                  child: Stack(
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        child: CircleAvatar(
                                                          radius: avatarRadius,
                                                          child: CircleAvatar(
                                                            radius:
                                                                avatarRadius -
                                                                    3,
                                                            backgroundImage:
                                                                NetworkImage(
                                                              "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj",
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: overlap,
                                                        child: CircleAvatar(
                                                          radius: avatarRadius,
                                                          child: CircleAvatar(
                                                            radius:
                                                                avatarRadius -
                                                                    3,
                                                            backgroundImage:
                                                                NetworkImage(
                                                              "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj",
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: overlap * 2,
                                                        child: CircleAvatar(
                                                          radius: avatarRadius,
                                                          child: CircleAvatar(
                                                            radius:
                                                                avatarRadius -
                                                                    3,
                                                            backgroundImage:
                                                                NetworkImage(
                                                              "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj",
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 175,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(24.0),
                                        child: LayoutBuilder(
                                          builder: (context, constraints) {
                                            final double iconSize =
                                                constraints.maxWidth * 0.18;
                                            final double spacing =
                                                constraints.maxWidth * 0.04;
                                            final double largeText =
                                                constraints.maxWidth * 0.10;
                                            final double smallText =
                                                constraints.maxWidth * 0.08;

                                            return Center(
                                              // Center the Column horizontally and vertically
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // First item
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      _GradientIconCircle(
                                                        size: iconSize,
                                                        icon: Icons.security,
                                                      ),
                                                      SizedBox(
                                                          width: spacing / 1.2),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "100%",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontFamily:
                                                                  "Outfit",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  largeText,
                                                              height: 1.0,
                                                            ),
                                                          ),
                                                          Text(
                                                            "Safety Privacy",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontFamily:
                                                                  "Outfit",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  smallText,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),

                                                  SizedBox(height: spacing),

                                                  // Second item
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      _GradientIconCircle(
                                                        size: iconSize,
                                                        icon: Icons.star,
                                                      ),
                                                      SizedBox(
                                                          width: spacing / 1.2),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "98%",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontFamily:
                                                                  "Outfit",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  largeText,
                                                              height: 1.0,
                                                            ),
                                                          ),
                                                          Text(
                                                            "Event Rating",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontFamily:
                                                                  "Outfit",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  smallText,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 175,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(24.0),
                                        child: LayoutBuilder(
                                          builder: (context, constraints) {
                                            final double largeText =
                                                constraints.maxWidth * 0.10;
                                            final double smallText =
                                                constraints.maxWidth * 0.08;

                                            return Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "900+",
                                                  style: TextStyle(
                                                    fontSize: largeText,
                                                    fontFamily: "Outfit",
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    height: 1.0,
                                                  ),
                                                ),
                                                Text(
                                                  "Project Done",
                                                  style: TextStyle(
                                                    fontSize: smallText,
                                                    fontFamily: "Outfit",
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 175,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              width: 2,
                                              color: Colors.white,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(24.0),
                                            child: LayoutBuilder(
                                              builder: (context, constraints) {
                                                // Responsive values
                                                double avatarRadius =
                                                    constraints.maxWidth * 0.10;
                                                double overlap =
                                                    avatarRadius * 1.6;
                                                final double largeText =
                                                    constraints.maxWidth * 0.10;
                                                final double smallText =
                                                    constraints.maxWidth * 0.08;

                                                return Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          "1,5K",
                                                          maxLines: 1,
                                                          style: TextStyle(
                                                            fontSize: largeText,
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Outfit",
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 1.0,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Happy Clients",
                                                          maxLines: 1,
                                                          style: TextStyle(
                                                            fontSize: smallText,
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Outfit",
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),

                                                    SizedBox(height: 10),

                                                    // Responsive avatar stack
                                                    SizedBox(
                                                      width: avatarRadius * 2 +
                                                          overlap * 2,
                                                      height: avatarRadius * 2,
                                                      child: Stack(
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Positioned(
                                                            left: 0,
                                                            child: CircleAvatar(
                                                              radius:
                                                                  avatarRadius,
                                                              child:
                                                                  CircleAvatar(
                                                                radius:
                                                                    avatarRadius -
                                                                        3,
                                                                backgroundImage:
                                                                    NetworkImage(
                                                                  "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj",
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: overlap,
                                                            child: CircleAvatar(
                                                              radius:
                                                                  avatarRadius,
                                                              child:
                                                                  CircleAvatar(
                                                                radius:
                                                                    avatarRadius -
                                                                        3,
                                                                backgroundImage:
                                                                    NetworkImage(
                                                                  "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj",
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: overlap * 2,
                                                            child: CircleAvatar(
                                                              radius:
                                                                  avatarRadius,
                                                              child:
                                                                  CircleAvatar(
                                                                radius:
                                                                    avatarRadius -
                                                                        3,
                                                                backgroundImage:
                                                                    NetworkImage(
                                                                  "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj",
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 175,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              width: 2,
                                              color: Colors.white,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(24.0),
                                            child: LayoutBuilder(
                                              builder: (context, constraints) {
                                                final double iconSize =
                                                    constraints.maxWidth * 0.18;
                                                final double spacing =
                                                    constraints.maxWidth * 0.04;
                                                final double largeText =
                                                    constraints.maxWidth * 0.10;
                                                final double smallText =
                                                    constraints.maxWidth * 0.08;

                                                return Center(
                                                  // Center the Column horizontally and vertically
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      // First item
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          _GradientIconCircle(
                                                            size: iconSize,
                                                            icon:
                                                                Icons.security,
                                                          ),
                                                          SizedBox(
                                                              width: spacing /
                                                                  1.2),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "100%",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      "Outfit",
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      largeText,
                                                                  height: 1.0,
                                                                ),
                                                              ),
                                                              Text(
                                                                "Safety Privacy",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      "Outfit",
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      smallText,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),

                                                      SizedBox(height: spacing),

                                                      // Second item
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          _GradientIconCircle(
                                                            size: iconSize,
                                                            icon: Icons.star,
                                                          ),
                                                          SizedBox(
                                                              width: spacing /
                                                                  1.2),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "98%",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      "Outfit",
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      largeText,
                                                                  height: 1.0,
                                                                ),
                                                              ),
                                                              Text(
                                                                "Event Rating",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      "Outfit",
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      smallText,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 175,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: LayoutBuilder(
                                        builder: (context, constraints) {
                                          final double largeText =
                                              constraints.maxWidth * 0.04;
                                          final double smallText =
                                              constraints.maxWidth * 0.03;

                                          return Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "900+",
                                                style: TextStyle(
                                                  fontSize: largeText,
                                                  fontFamily: "Outfit",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  height: 1.0,
                                                ),
                                              ),
                                              Text(
                                                "Project Done",
                                                style: TextStyle(
                                                  fontSize: smallText,
                                                  fontFamily: "Outfit",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ),
            ],
          ),
        ));
  }
}

// ⭐ Gradient icon circle widget (reusable)
class _GradientIconCircle extends StatelessWidget {
  final double size;
  final IconData icon;

  const _GradientIconCircle({required this.size, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0XFFFB0182),
            Color(0XFFD21CE6),
            Color(0XFF2FACF7),
            Color(0XFF519FFC),
            Color(0XFF3934F1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.37, 0.68, 0.77, 1.0],
        ),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(icon, color: Colors.black, size: size * 0.5),
        ),
      ),
    );
  }
}
