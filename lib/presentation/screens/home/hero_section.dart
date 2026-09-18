// ignore_for_file: non_constant_identifier_names

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../widgets/my_button.dart';
import '../../../widgets/my_container.dart';
import '../../../widgets/my_flex.dart';
import '../../../widgets/my_flex_item.dart';
import '../../../widgets/my_spacing.dart';
import '../../../widgets/my_text.dart';
import '../../../widgets/my_text_style.dart';
import '../../../widgets/portfolio_buttton.dart';
import '../../../widgets/responsive.dart';
import '../../../utils/ui_mixins.dart';

class InformationSection extends StatefulWidget {
  const InformationSection({super.key});

  @override
  State<InformationSection> createState() => _InformationSectionState();
}

class _InformationSectionState extends State<InformationSection> with UIMixin {
  final animatedRoles = [
    "Flutter Developer",
    "IOS Developer",
    "Android Developer",
    "Web Developer",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyText.displayMedium(
          "Sakib Hasan".toUpperCase(),
          color: Colors.white,
          fontWeight: 600,
        ),
        MyText.displaySmall(
          "Creative",
          color: Colors.white,
          fontWeight: 600,
        ),
        SizedBox(
          height: 50, // allow height to grow for 2 lines
          child: ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [
                Color(0XFFFB0182),
                Color(0XFFD21CE6),
                Color(0XFF2FACF7),
                Color(0XFF519FFC),
                Color(0XFF3934F1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.0, 0.37, 0.68, 0.77, 1.0],
            ).createShader(bounds),
            blendMode: BlendMode.srcIn,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: animatedRoles.map((role) {
                return TyperAnimatedText(
                  role,
                  speed: Duration(milliseconds: 50),
                  textStyle: MyTextStyle.getStyle(
                    color: Colors.white,
                    fontWeight: 800,
                    fontSize:
                        MyTextStyle.defaultTextSize[MyTextType.displaySmall],
                  ),
                );
              }).toList(),
              displayFullTextOnTap: true,
              pause: Duration(milliseconds: 600),
            ),
          ),
        ),
        MyText.displaySmall(
          "Professional",
          color: Colors.white,
          fontWeight: 500,
        ),
        MyText.titleMedium(
          "Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por\nscientie, musica, sport etc, litot Europa usa li sam vocabular.",
          color: Colors.white,
          fontWeight: 500,
        ),
        MySpacing.height(flexSpacing),
        ResponsiveHoverGradientButton(),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

Widget HeroSection() {
  Widget imageSection() {
    return Transform.rotate(
        angle: 0,
        child: ClipRRect(
          child: SvgPicture.asset(
            "assets/icons/iamporag.svg",
            height: 380,
          ),
        ));
  }

  return MyFlex(
    contentPadding: false,
    children: [
      MyFlexItem(sizes: 'lg-6 md-6', child: imageSection()),
      MyFlexItem(sizes: 'lg-6 md-6', child: InformationSection()),
    ],
  );
}

class CardSection extends StatefulWidget {
  const CardSection({super.key});

  @override
  State<CardSection> createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> with UIMixin {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: MySpacing.x(flexSpacing * 12),
          child: MyFlex(
            children: [
              MyFlexItem(
                child: GridView.builder(
                  shrinkWrap: true,
                  primary: true,
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 600,
                    crossAxisSpacing: 05,
                    mainAxisSpacing: 05,
                    mainAxisExtent: 280,
                  ),
                  itemBuilder: (context, index) {
                    return MyContainer(
                      onTap: () {},
                      paddingAll: 10,
                      child: MyContainer(
                        height: 200,
                        width: double.infinity,
                        paddingAll: 0,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                            "https://images.pexels.com/photos/19284305/pexels-photo-19284305.jpeg",
                            fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
