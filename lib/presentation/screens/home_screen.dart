import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nevate_portfolio/core/res/responsive.dart';
import 'package:nevate_portfolio/widgets/portfolio_buttton.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: HomeMobile(),
      tablet: HomeTablet(),
      desktop: HomeDesktop(),
    );

    // Scaffold(
    //   body: SingleChildScrollView(
    // child: Column(
    //       children: [
    //         HeaderAreaSection(
    //           size: size,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    lg: 12,
                    md: 12,
                    sm: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://images.pexels.com/photos/30481070/pexels-photo-30481070/free-photo-of-soaring-seagull-against-a-clear-blue-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 12,
                    md: 12,
                    sm: 6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sakib Hasan".toUpperCase(),
                            style: TextStyle(
                              fontSize: 20,
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
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: "Outfit",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Text(''),
                              ShaderMask(
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
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontFamily: "Outfit",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TyperAnimatedText(
                                      "Android App Developer",
                                      speed: const Duration(milliseconds: 50),
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontFamily: "Outfit",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TyperAnimatedText(
                                      "IOS App Developer",
                                      speed: const Duration(milliseconds: 50),
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontFamily: "Outfit",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TyperAnimatedText(
                                      "Web App Developer",
                                      speed: const Duration(milliseconds: 50),
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontFamily: "Outfit",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TyperAnimatedText(
                                      "UI/UX Designer",
                                      speed: const Duration(milliseconds: 50),
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontFamily: "Outfit",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Professional",
                            textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false,
                              applyHeightToLastDescent: false,
                            ),
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: "Outfit",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por\nscientie, musica, sport etc, litot Europa usa li sam vocabular.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          PortfolioButtonMobile(),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: Row(
                  children: [
                    /// 🟣 Happy Clients Card
                    _buildClientCard(),

                    SizedBox(width: 16.w),

                    /// 🟣 Safety Privacy Card
                    _buildInfoCard(
                      icon: Icons.security,
                      percentage: "100%",
                      label: "Safety Privacy",
                    ),

                    SizedBox(width: 16.w),

                    /// 🟣 Event Rating Card
                    _buildInfoCard(
                      icon: Icons.star,
                      percentage: "98%",
                      label: "Event Rating",
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: Column(
                  children: [
                    /// 🟣 Happy Clients Card
                    Container(
                      padding: EdgeInsets.all(20.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          /// Left: Text
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1.5K",
                                  style: TextStyle(
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Outfit',
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  "Happy Clients",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          /// Right: Stacked Avatars
                          SizedBox(
                            width: 110.w,
                            height: 46.h,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: List.generate(3, (index) {
                                return Positioned(
                                  left: index * 30.w,
                                  child: CircleAvatar(
                                    radius: 23.r,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 20.r,
                                      backgroundImage: NetworkImage(
                                        "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj",
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 16.h),

                    /// 🟣 Info Card 1
                    _buildInfoCard(
                      icon: Icons.security,
                      percentage: "100%",
                      label: "Safety Privacy",
                    ),

                    SizedBox(height: 16.h),

                    /// 🟣 Info Card 2
                    _buildInfoCard(
                      icon: Icons.star,
                      percentage: "98%",
                      label: "Event Rating",
                    ),
                  ],
                ),
              ),
              ResponsiveGridRow(
                children: [
                  /// 🟣 Card 1: Happy Clients
                  ResponsiveGridCol(
                    lg: 12,
                    md: 12,
                    sm: 12,
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 16.w),
                      padding: EdgeInsets.all(20.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Row(
                        children: [
                          /// Left Side - Texts
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1.5K",
                                  style: TextStyle(
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Outfit',
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  "Happy Clients",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          /// Right Side - Stacked Avatars (Fixed height wrapper)
                          SizedBox(
                            width: 110.w,
                            height: 46.h,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: List.generate(3, (index) {
                                return Positioned(
                                  left: index * 30.w,
                                  child: CircleAvatar(
                                    radius: 23.r,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 20.r,
                                      backgroundImage: NetworkImage(
                                        "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj",
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// 🟣 Card 2: Two Info Cards vertically
                  ResponsiveGridCol(
                    lg: 12,
                    md: 12,
                    sm: 12,
                    child: Column(
                      children: [
                        _buildInfoCard(
                          icon: Icons.security,
                          percentage: "100%",
                          label: "Safety Privacy",
                        ),
                        SizedBox(height: 12.h),
                        _buildInfoCard(
                          icon: Icons.star,
                          percentage: "98%",
                          label: "Event Rating",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Container(
                      width: 350.w,
                      height: 150.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0.r),
                        border: Border.all(
                          width: 2,
                          color: Colors.white,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(25.r),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Spacer(),
                                  Text(
                                    "1,5K",
                                    style: TextStyle(
                                      fontSize: 28.sp,
                                      color: Colors.white,
                                      fontFamily: "Outfit",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Happy Clients",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontFamily: "Outfit",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Expanded(
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0.w,
                                    child: SizedBox(
                                      child: CircleAvatar(
                                        radius: 23.r,
                                        child: CircleAvatar(
                                          radius: 20.r,
                                          backgroundImage: NetworkImage(
                                              "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj"),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 30.w,
                                    child: SizedBox(
                                      child: CircleAvatar(
                                        radius: 23.r,
                                        child: CircleAvatar(
                                          radius: 20.r,
                                          backgroundImage: NetworkImage(
                                              "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj"),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 60.w,
                                    child: SizedBox(
                                      child: CircleAvatar(
                                        radius: 23.r,
                                        child: CircleAvatar(
                                          radius: 20.r,
                                          backgroundImage: NetworkImage(
                                              "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      height: 150.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0.r),
                        border: Border.all(
                          width: 2,
                          color: Colors.white,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(28.r),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width:
                                      100.w, // Add extra width for the border
                                  height:
                                      100.h, // Add extra height for the border
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
                                    padding: EdgeInsets.all(
                                        2.w), // Adjust border thickness
                                    child: Container(
                                      width: 100.w,
                                      height: 100.h,
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .white, // Background color of the button
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.security,
                                          size: 28.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "100%",
                                      style: TextStyle(
                                        fontSize: 28.sp,
                                        color: Colors.white,
                                        fontFamily: "Outfit",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Safety Privacy",
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        color: Colors.white,
                                        fontFamily: "Outfit",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      100.w, // Add extra width for the border
                                  height:
                                      100.h, // Add extra height for the border
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
                                    padding: const EdgeInsets.all(
                                        2), // Adjust border thickness
                                    child: Container(
                                      width: 100.w,
                                      height: 100.h,
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .white, // Background color of the button
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.star,
                                          size: 28.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "98%",
                                      style: TextStyle(
                                        fontSize: 28.sp,
                                        color: Colors.white,
                                        fontFamily: "Outfit",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Event Rating",
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        color: Colors.white,
                                        fontFamily: "Outfit",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 150.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0.r),
                        border: Border.all(
                          width: 2,
                          color: Colors.white,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(28.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "900+",
                              style: TextStyle(
                                fontSize: 28.sp,
                                color: Colors.white,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Project Done",
                              style: TextStyle(
                                fontSize: 22.sp,
                                color: Colors.white,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildClientCard() {
    return Container(
      width: 250.w,
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Row(
        children: [
          /// Left: Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1.5K",
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Outfit',
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  "Happy Clients",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          /// Right: Avatar Stack
          SizedBox(
            width: 90.w,
            height: 46.h,
            child: Stack(
              clipBehavior: Clip.none,
              children: List.generate(3, (index) {
                return Positioned(
                  left: index * 30.w,
                  child: CircleAvatar(
                    radius: 23.r,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundImage: NetworkImage(
                        "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj",
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String percentage,
    required String label,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Row(
        children: [
          /// Gradient Circle Icon
          Container(
            width: 70.w,
            height: 70.w,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
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
            child: Center(
              child: Container(
                width: 62.w,
                height: 62.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(icon, size: 28.h, color: Colors.black87),
              ),
            ),
          ),
          SizedBox(width: 14.w),

          /// Text Info
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                percentage,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Outfit',
                ),
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontFamily: 'Outfit',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: size.height * 1.1.h,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Transform.rotate(
                    angle: -25,
                    child: Container(
                      margin: EdgeInsets.all(50.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/30481070/pexels-photo-30481070/free-photo-of-soaring-seagull-against-a-clear-blue-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                            ),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: size.height * 1.1.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sakib Hasan".toUpperCase(),
                      style: TextStyle(
                        fontSize: 28.sp,
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
                        fontSize: 48.sp,
                        color: Colors.white,
                        fontFamily: "Outfit",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Text(''),
                        ShaderMask(
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
                                  fontSize: 48.sp,
                                  color: Colors.white,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TyperAnimatedText(
                                "Android App Developer",
                                speed: const Duration(milliseconds: 50),
                                textStyle: TextStyle(
                                  fontSize: 48.sp,
                                  color: Colors.white,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TyperAnimatedText(
                                "IOS App Developer",
                                speed: const Duration(milliseconds: 50),
                                textStyle: TextStyle(
                                  fontSize: 48.sp,
                                  color: Colors.white,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TyperAnimatedText(
                                "Web App Developer",
                                speed: const Duration(milliseconds: 50),
                                textStyle: TextStyle(
                                  fontSize: 48.sp,
                                  color: Colors.white,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TyperAnimatedText(
                                "UI/UX Designer",
                                speed: const Duration(milliseconds: 50),
                                textStyle: TextStyle(
                                  fontSize: 48.sp,
                                  color: Colors.white,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Professional",
                      textHeightBehavior: TextHeightBehavior(
                        applyHeightToFirstAscent: false,
                        applyHeightToLastDescent: false,
                      ),
                      style: TextStyle(
                        fontSize: 48.sp,
                        color: Colors.white,
                        fontFamily: "Outfit",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por\nscientie, musica, sport etc, litot Europa usa li sam vocabular.",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    PortfolioButtonTablet(),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(),
              Container(
                width: 350.w,
                height: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0.r),
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(25.r),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Spacer(),
                            Text(
                              "1,5K",
                              style: TextStyle(
                                fontSize: 28.sp,
                                color: Colors.white,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Happy Clients",
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0.w,
                              child: SizedBox(
                                child: CircleAvatar(
                                  radius: 23.r,
                                  child: CircleAvatar(
                                    radius: 20.r,
                                    backgroundImage: NetworkImage(
                                        "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj"),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 30.w,
                              child: SizedBox(
                                child: CircleAvatar(
                                  radius: 23.r,
                                  child: CircleAvatar(
                                    radius: 20.r,
                                    backgroundImage: NetworkImage(
                                        "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj"),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60.w,
                              child: SizedBox(
                                child: CircleAvatar(
                                  radius: 23.r,
                                  child: CircleAvatar(
                                    radius: 20.r,
                                    backgroundImage: NetworkImage(
                                        "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0.r),
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(28.r),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 100.w, // Add extra width for the border
                            height: 100.h, // Add extra height for the border
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
                              padding: EdgeInsets.all(
                                  2.w), // Adjust border thickness
                              child: Container(
                                width: 100.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  color: Colors
                                      .white, // Background color of the button
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.security,
                                    size: 28.h,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "100%",
                                style: TextStyle(
                                  fontSize: 28.sp,
                                  color: Colors.white,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Safety Privacy",
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  color: Colors.white,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100.w, // Add extra width for the border
                            height: 100.h, // Add extra height for the border
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
                              padding: const EdgeInsets.all(
                                  2), // Adjust border thickness
                              child: Container(
                                width: 100.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  color: Colors
                                      .white, // Background color of the button
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.star,
                                    size: 28.h,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "98%",
                                style: TextStyle(
                                  fontSize: 28.sp,
                                  color: Colors.white,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Event Rating",
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  color: Colors.white,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0.r),
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(28.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "900+",
                        style: TextStyle(
                          fontSize: 28.sp,
                          color: Colors.white,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Project Done",
                        style: TextStyle(
                          fontSize: 22.sp,
                          color: Colors.white,
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: HeaderAreaSection(size: size),
    );
  }
}

class HeaderAreaSection extends StatelessWidget {
  const HeaderAreaSection({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return HeroSection(size: size);
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: size.height * 1.2.h,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Transform.rotate(
                    angle: -25,
                    child: Container(
                      margin: EdgeInsets.all(50.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/30481070/pexels-photo-30481070/free-photo-of-soaring-seagull-against-a-clear-blue-sky.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                            ),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: size.height * 1.2.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sakib Hasan".toUpperCase(),
                      style: TextStyle(
                        fontSize: 21.sp,
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
                        fontSize: 48.sp,
                        color: Colors.white,
                        fontFamily: "Outfit",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 100.h,
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
                                fontSize: 48.sp,
                                color: Colors.white,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TyperAnimatedText(
                              "Android App Developer",
                              speed: const Duration(milliseconds: 50),
                              textStyle: TextStyle(
                                fontSize: 48.sp,
                                color: Colors.white,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TyperAnimatedText(
                              "IOS App Developer",
                              speed: const Duration(milliseconds: 50),
                              textStyle: TextStyle(
                                fontSize: 48.sp,
                                color: Colors.white,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TyperAnimatedText(
                              "Web App Developer",
                              speed: const Duration(milliseconds: 50),
                              textStyle: TextStyle(
                                fontSize: 48.sp,
                                color: Colors.white,
                                fontFamily: "Outfit",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TyperAnimatedText(
                              "UI/UX Designer",
                              speed: const Duration(milliseconds: 50),
                              textStyle: TextStyle(
                                fontSize: 48.sp,
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
                        fontSize: 48.sp,
                        color: Colors.white,
                        fontFamily: "Outfit",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por\nscientie, musica, sport etc, litot Europa usa li sam vocabular.",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    PortfolioButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 18.w),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 400.w,
                  height: 175.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1,5K",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Happy Clients",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                  fontFamily: "Outfit",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: SizedBox(
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  child: SizedBox(
                                    child: CircleAvatar(
                                      radius: 23,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundImage: NetworkImage(
                                            "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj"),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 30,
                                  child: SizedBox(
                                    child: CircleAvatar(
                                      radius: 23,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundImage: NetworkImage(
                                            "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj"),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 60,
                                  child: SizedBox(
                                    child: CircleAvatar(
                                      radius: 23,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundImage: NetworkImage(
                                            "https://yt3.googleusercontent.com/p9Vw8tiYXeJNLR7A39Nc54EkZcfYs5J6HYBbhiQbWU5u4f6iZ-UUT-y_cfdZTy86PMYNAVx3PA=s150-c-k-c0x00ffffff-no-rj"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 175.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50, // Add extra width for the border
                              height: 50, // Add extra height for the border
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
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(
                                    2), // Adjust border thickness
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .white, // Background color of the button
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(Icons.security),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "100%",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontFamily: "Outfit",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Safety Privacy",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontFamily: "Outfit",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50, // Add extra width for the border
                              height: 50, // Add extra height for the border
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
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(
                                    2), // Adjust border thickness
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .white, // Background color of the button
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(Icons.star),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "98%",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontFamily: "Outfit",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Event Rating",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontFamily: "Outfit",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 250.w,
                  height: 175.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "900+",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontFamily: "Outfit",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Project Done",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.white,
                            fontFamily: "Outfit",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF100E18),
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.grey.shade800,
          ),
        ),
      ),
      width: size.width,
      height: size.height * 0.08,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width / 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShaderMask(
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
              child: Text(
                "iamporag",
                style: TextStyle(
                  fontSize: 28.sp,
                  color: Colors.white,
                  fontFamily: "Outfit",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "About Me",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Project",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Contact us",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TabletAppBarSection extends StatelessWidget {
  const TabletAppBarSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF100E18),
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.grey.shade800,
          ),
        ),
      ),
      width: size.width,
      height: size.height * 0.08,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width / 32.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShaderMask(
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
              child: Text(
                "iamporag",
                style: TextStyle(
                  fontSize: 38.sp,
                  color: Colors.white,
                  fontFamily: "Outfit",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                      debugPrint("Clicked Drawer");
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileAppBarSection extends StatelessWidget {
  const MobileAppBarSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF100E18),
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.grey.shade800,
          ),
        ),
      ),
      width: size.width,
      height: size.height * 0.08,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width / 60.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShaderMask(
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
              child: Text(
                "iamporag",
                style: TextStyle(
                  fontSize: 58.sp,
                  color: Colors.white,
                  fontFamily: "Outfit",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                      debugPrint("Clicked Drawer");
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
