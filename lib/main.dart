// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main() {
//   runApp(PortfolioApp());
// }

// class PortfolioApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(1440, 1024),
//       builder: (context, child) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(primarySwatch: Colors.blue),
//           home: PortfolioHomePage(),
//         );
//       },
//     );
//   }
// }

// class PortfolioHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("My Portfolio"),
//       ),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           if (constraints.maxWidth > 1200) {
//             return _buildLaptopLayout(context);
//           } else if (constraints.maxWidth > 800) {
//             return _buildTabletLayout(context);
//           } else {
//             return _buildMobileLayout(context);
//           }
//         },
//       ),
//     );
//   }

//   Widget _buildLaptopLayout(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.w),
//       child: Row(
//         children: [
//           Expanded(
//             flex: 1,
//             child: _buildProfileSection(),
//           ),
//           SizedBox(width: 32.w),
//           Expanded(
//             flex: 2,
//             child: _buildProjectSection(),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTabletLayout(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.w),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Expanded(flex: 1, child: _buildProfileSection()),
//               SizedBox(width: 16.w),
//               Expanded(flex: 1, child: _buildProjectSection()),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMobileLayout(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.w),
//       child: Column(
//         children: [
//           _buildProfileSection(),
//           SizedBox(height: 24.h),
//           _buildProjectSection(),
//         ],
//       ),
//     );
//   }

//   Widget _buildProfileSection() {
//     return Container(
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.blueAccent.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(16.r),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CircleAvatar(
//             radius: 50.r,
//             backgroundImage: AssetImage(
//                 'assets/images/profile.png'), // Replace with your image path
//           ),
//           SizedBox(height: 16.h),
//           Text(
//             'John Doe',
//             style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 8.h),
//           Text(
//             'Flutter Developer',
//             style: TextStyle(fontSize: 16.sp),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildProjectSection() {
//     return Container(
//       padding: EdgeInsets.all(16.w),
//       decoration: BoxDecoration(
//         color: Colors.blueGrey.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(16.r),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Projects',
//             style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 16.h),
//           ListView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: 3,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: EdgeInsets.symmetric(vertical: 8.h),
//                 child: ListTile(
//                   tileColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                   title: Text('Project Title ${index + 1}'),
//                   subtitle: Text('Project Description ${index + 1}'),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:nevate_portfolio/nevate_app.dart';

void main() {
  runApp(const NevateApp());
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Portfolio Web App',
//       theme: ThemeData(
//         textTheme: GoogleFonts.poppinsTextTheme(),
//       ),
//       home: PortfolioHomePage(),
//     );
//   }
// }

// class PortfolioHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Header Section
//             Stack(
//               children: [
//                 Container(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
//                   color: Colors.black,
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "Nevate",
//                             style: TextStyle(
//                               fontSize: 28,
//                               color: Colors.purpleAccent,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               _buildHeaderLink("Home"),
//                               _buildHeaderLink("About Me"),
//                               _buildHeaderLink("Project"),
//                               _buildHeaderLink("Contact Us"),
//                             ],
//                           )
//                         ],
//                       ),
//                       const SizedBox(height: 40),
//                       // Hero Section
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // Profile Image
//                           Expanded(
//                             child: Image.asset(
//                               'assets/images/profile.png',
//                               height: 400,
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "GEORGE MACREADY",
//                                   style: TextStyle(
//                                     fontSize: 22,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 RichText(
//                                   text: TextSpan(
//                                     text: "Creative ",
//                                     style: TextStyle(
//                                       fontSize: 48,
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                     children: [
//                                       TextSpan(
//                                         text: "UI/UX Designer",
//                                         style: TextStyle(
//                                             color: Colors.purpleAccent),
//                                       ),
//                                       TextSpan(
//                                         text: " Professional",
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(height: 10),
//                                 Text(
//                                   "Li Europan lingues es membres del sam familie.",
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 20),
//                                 ElevatedButton(
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.purpleAccent,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(30),
//                                     ),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 20, vertical: 15),
//                                     child: Text("View My Portfolio"),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 30),
//                                 Row(
//                                   children: [
//                                     _buildStatCard("1.5K", "Happy Clients"),
//                                     _buildStatCard("100%", "Safety Privacy"),
//                                     _buildStatCard("98%", "Event Rating"),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             // About Me Section
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
//               color: Colors.grey[900],
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "About Me",
//                     style: TextStyle(
//                       fontSize: 36,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     "Li Europan lingues es membres del sam familie.",
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                   const SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       _buildStatCard("15+", "Years Experience"),
//                       _buildStatCard("2K+", "World Clients"),
//                       _buildStatCard("990+", "Projects Done"),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildHeaderLink(String text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Text(
//         text,
//         style: TextStyle(
//           fontSize: 16,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }

//   Widget _buildStatCard(String value, String label) {
//     return Column(
//       children: [
//         Text(
//           value,
//           style: TextStyle(
//             fontSize: 24,
//             color: Colors.purpleAccent,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: 14,
//             color: Colors.grey,
//           ),
//         ),
//       ],
//     );
//   }
// }
