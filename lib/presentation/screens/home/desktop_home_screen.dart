import 'package:flutter/material.dart';
import 'package:nevate_portfolio/widgets/my_flex.dart';
import 'package:nevate_portfolio/widgets/my_flex_item.dart';
import 'package:nevate_portfolio/widgets/my_text.dart';
import '../../../widgets/my_container.dart';
import '../../../widgets/my_spacing.dart';
import '../../../widgets/responsive.dart';
import 'hero_section.dart';
import 'project_section.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: MySpacing.x(flexSpacing / 2),
            child: MyFlex(children: [
              MyFlexItem(
                  child: MyContainer(
                paddingAll: 24,
                child: HeroSection(),
              ))
            ])),

        SizedBox(
          height: 50,
        ),
        Center(
          child: MyText.displayLarge(
            "My Project",
            color: Colors.white,
          ),
        ),
        Padding(
          padding: MySpacing.x(flexSpacing / 2),
          child: MyFlex(children: [
            MyFlexItem(
                child: MyContainer(
              paddingAll: 24,
              child: ProjectSection(),
            ))
          ]),
        ),
        SizedBox(
          height: 50,
        ),
        // AboutSection(
        // ),
      ],
    );
  }
}

class AboutSection extends StatelessWidget {
  final Size size;
  const AboutSection({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        // Responsive text sizes
        double titleSize = width > 1200
            ? 48
            : width > 800
                ? 40
                : 32;
        double bodySize = width > 1200
            ? 28
            : width > 800
                ? 22
                : 18;
        double statNumberSize = width > 1200
            ? 42
            : width > 800
                ? 36
                : 28;

        return Padding(
          padding: MySpacing.x(flexSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title
              Text(
                'About Me',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // Description
              Text(
                'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocab. Omnicos directe al desirabilite de un no v lingua franca',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: bodySize,
                  height: 1.4,
                ),
              ),

              const SizedBox(height: 50),

              // Responsive stats card
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 40,
                  runSpacing: 20,
                  children: [
                    _statItem("15+", "Years Experience", statNumberSize),
                    _statItem("2K+", "World Clients", statNumberSize),
                    _statItem("999+", "Projects Done", statNumberSize),
                  ],
                ),
              ),

              SizedBox(
                height: 50,
              ),
              ClipPath(
                clipper: BottomCurveClipper(),
                child: Image.network(
                  "https://images.pexels.com/photos/34657110/pexels-photo-34657110.jpeg",
                  fit: BoxFit.cover,
                  height: 480,
                  width: double.infinity,
                  alignment: Alignment(0, -0.3),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget _statItem(String number, String label, double numberSize) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
            fontSize: numberSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            height: 1.0,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 100,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
