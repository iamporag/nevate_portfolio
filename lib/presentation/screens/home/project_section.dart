import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:get/get.dart';
import 'package:nevate_portfolio/controller/my_project_controller.dart';
import 'package:nevate_portfolio/core/utils/ui_mixins.dart';
import 'package:nevate_portfolio/widgets/my_button.dart';

import '../../../model/tour_list_model.dart';
import '../../../widgets/my_container.dart';
import '../../../widgets/my_flex.dart';
import '../../../widgets/my_flex_item.dart';
import '../../../widgets/my_spacing.dart';
import '../../../widgets/my_text.dart';
import '../../../widgets/responsive.dart';

class ProjectSection extends StatefulWidget {
  const ProjectSection({super.key});

  @override
  State<ProjectSection> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> with UIMixin {
  MyProjectController controller = Get.put(MyProjectController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GetBuilder<MyProjectController>(builder: (controller) {
          return Padding(
            padding: MySpacing.x(flexSpacing / 2),
            child: MyFlex(
              children: [
                MyFlexItem(
                  child: GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    itemCount: controller.tour.length - 6,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 500,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 280,
                    ),
                    itemBuilder: (context, index) {
                      TourListModel tour = controller.tour[index];
                      return MyContainer(
                        onTap: controller.goToDetail,
                        paddingAll: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            MyContainer(
                              height: 200,
                              width: double.infinity,
                              paddingAll: 0,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.network(
                                  "https://images.pexels.com/photos/19284305/pexels-photo-19284305.jpeg",
                                  fit: BoxFit.cover),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: MyText.titleLarge(
                                    tour.tourName,
                                    maxLines: 1,
                                    color: Colors.white,
                                  ),
                                ),
                                MyButton.medium(
                                    onPressed: () {},
                                    child: Text(
                                      "View",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                // MyStarRating(
                                //   rating: tour.averageRating,
                                //   activeColor: contentTheme.warning,
                                // )
                              ],
                            ),
                            // Row(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Icon(
                            //       LucideIcons.map_pin,
                            //       size: 16,
                            //       color: Colors.white,
                            //     ),
                            //     MySpacing.width(8),
                            //     MyText.bodySmall(
                            //       tour.location,
                            //       color: Colors.white,
                            //     ),
                            //   ],
                            // ),
                            // Row(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Icon(
                            //       LucideIcons.clock,
                            //       size: 16,
                            //       color: Colors.white,
                            //     ),
                            //     MySpacing.width(8),
                            //     MyText.bodySmall(
                            //       tour.duration,
                            //       color: Colors.white,
                            //     ),
                            //   ],
                            // ),
                            // Row(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Icon(
                            //       LucideIcons.calendar_days,
                            //       size: 16,
                            //       color: Colors.white,
                            //     ),
                            //     MySpacing.width(8),
                            //     Wrap(
                            //       spacing: 12,
                            //       runSpacing: 12,
                            //       children: tour.availableDate
                            //           .map((e) => MyText.bodySmall(
                            //                 e,
                            //                 color: Colors.white,
                            //               ))
                            //           .toList(),
                            //     ),
                            //   ],
                            // ),
                            // Row(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Icon(
                            //       LucideIcons.file_text,
                            //       size: 16,
                            //       color: Colors.white,
                            //     ),
                            //     MySpacing.width(8),
                            //     Expanded(
                            //         child: MyText.bodySmall(
                            //       tour.description,
                            //       color: Colors.white,
                            //     )),
                            //   ],
                            // ),
                            // Row(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Icon(
                            //       LucideIcons.circle_dollar_sign,
                            //       size: 16,
                            //       color: Colors.white,
                            //     ),
                            //     MySpacing.width(8),
                            //     MyText.bodySmall(
                            //       '\$${tour.pricePerPerson} per person',
                            //       color: Colors.white,
                            //     ),
                            //   ],
                            // ),
                            // Row(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     Icon(LucideIcons.circle_check,
                            //         size: 16,
                            //         color: tour.status == 'active'
                            //             ? contentTheme.success
                            //             : contentTheme.danger),
                            //     MySpacing.width(8),
                            //     Expanded(
                            //         child: MyText.bodySmall(tour.status,
                            //             color: tour.status == 'active'
                            //                 ? contentTheme.success
                            //                 : contentTheme.danger)),
                            //   ],
                            // ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        });

        // Padding(
        //   padding: MySpacing.x(flexSpacing / 2),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       /// ---------------- Header ----------------
        //       Text(
        //         "Our Lasted Project",
        //         style: TextStyle(
        //           fontSize: titleSize,
        //           fontWeight: FontWeight.bold,
        //           color: Colors.white,
        //         ),
        //       ),
        //       const SizedBox(height: 12),

        //       Text(
        //         "Li Europan lingues es membres del sam familie. Lor separat existentie es un myth.\n"
        //         "Por scientie, musica, sport etc, litot Europa usa li sam vocabular.",
        //         style: TextStyle(
        //           fontSize: bodySize,
        //           color: Colors.white70,
        //         ),
        //       ),

        //       const SizedBox(height: 50),

        //       /// ---------------- GRID ----------------

        //       // GridView
        //       GridView.builder(
        //         padding: EdgeInsets.all(60),
        //         itemCount: 4,
        //         shrinkWrap: true,
        //         physics: NeverScrollableScrollPhysics(),
        //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: gridCount,
        //           crossAxisSpacing: crossAxisSpacing,
        //           mainAxisSpacing: mainAxisSpacing,
        //           childAspectRatio: childAspectRatio,
        //         ),
        //         itemBuilder: (context, index) {
        //           final titles = [
        //             "3D Design",
        //             "Mobile Apps",
        //             "Landing Page",
        //             "Presentation"
        //           ];
        //           return _projectCard(
        //             title: titles[index],
        //             image: "assets/placeholder.png",
        //             buttonFont: buttonFont,
        //             bodySize: bodySize,
        //           );
        //         },
        //       )
        //     ],
        //   ),
        // );
      },
    );
  }

  Widget _projectCard({
    required String title,
    required String image,
    required double buttonFont,
    required double bodySize,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: bodySize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Sed placerat sem risus, id iaculis leo magna in.",
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: bodySize - 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [Color(0xff6f00ff), Color(0xff00e5ff)],
                      ),
                    ),
                    child: Text(
                      "See Project",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: buttonFont - 5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
