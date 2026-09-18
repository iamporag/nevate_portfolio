import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/bloc/bloc/button_bloc.dart';
import 'my_button.dart';
import 'my_spacing.dart';
import 'my_text.dart';

class ResponsivePortfolioButton extends StatelessWidget {
  const ResponsivePortfolioButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonBloc(),
      child: BlocBuilder<ButtonBloc, ButtonState>(
        builder: (context, state) {
          // RESPONSIVE SIZES
          double screenWidth = MediaQuery.of(context).size.width;

          // Button width grows on large screen, shrinks on mobile
          double maxWidth = screenWidth > 1200
              ? 230
              : screenWidth > 900
                  ? 200
                  : screenWidth > 600
                      ? 180
                      : 160;

          double maxHeight = screenWidth > 600 ? 70 : 60;

          double borderRadius = maxHeight / 2;

          return Container(
            width: maxWidth,
            height: maxHeight,
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
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: InkWell(
              onHover: (isHover) {
                context.read<ButtonBloc>().add(
                      HoverChanged(
                        isHovering: isHover,
                        width: isHover ? maxWidth : 0.0,
                      ),
                    );
              },
              onTap: () {
                context.read<ButtonBloc>().add(
                      ButtonTapped(width: maxWidth),
                    );
              },
              child: Padding(
                padding: EdgeInsets.all(maxHeight * 0.05),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: state.animatedWidth,
                  height: maxHeight,
                  decoration: BoxDecoration(
                    color: state.isHover
                        ? Colors.transparent
                        : const Color(0XFF100E18),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: MyText.titleLarge(
                        "View My Portfolio",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ResponsiveHoverGradientButton extends StatelessWidget {
  const ResponsiveHoverGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonBloc(),
      child: BlocBuilder<ButtonBloc, ButtonState>(
        builder: (context, state) {
          double screenWidth = MediaQuery.of(context).size.width;

          double maxWidth = screenWidth > 1200
              ? 230
              : screenWidth > 900
                  ? 200
                  : screenWidth > 600
                      ? 180
                      : 150; // <-- a bit smaller for tiny screens

          double maxHeight = screenWidth > 600 ? 65 : 55;
          double borderRadius = maxHeight / 2;

          // RESPONSIVE PADDING
          double horizontalPadding = screenWidth > 600 ? 40 : 22;

          return MouseRegion(
            onEnter: (_) => context
                .read<ButtonBloc>()
                .add(HoverChanged(isHovering: true, width: maxWidth)),
            onExit: (_) => context
                .read<ButtonBloc>()
                .add(HoverChanged(isHovering: false, width: maxWidth)),
            child: Stack(
              children: [
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 250),
                  opacity: state.isHover ? 1 : 0,
                  child: Container(
                    width: maxWidth,
                    height: maxHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
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
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  width: maxWidth,
                  height: maxHeight,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    color: state.isHover
                        ? Colors.transparent
                        : const Color(0XFF100E18),
                    border: Border.all(
                      color: state.isHover ? Colors.transparent : Colors.black,
                    ),
                  ),
                  child: MyButton(
                    onPressed: () {},
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    borderRadiusAll: borderRadius,
                    splashColor: Colors.white.withOpacity(0.12),

                    // FIX: responsive padding!
                    padding: MySpacing.xy(horizontalPadding, 18),

                    child: FittedBox(
                      fit: BoxFit.scaleDown, // <-- auto scales text
                      child: MyText.bodyLarge(
                        "View My Portfolio",
                        color: Colors.white,
                        fontWeight: 600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class PortfolioButtonMobile extends StatelessWidget {
  const PortfolioButtonMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final double maxWidth = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (context) => ButtonBloc(),
      child: BlocBuilder<ButtonBloc, ButtonState>(
        builder: (context, state) {
          return Container(
            width: 320, // Add extra width for the border
            height: 68, // Add extra height for the border
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
              borderRadius: BorderRadius.circular(100),
            ),
            child: InkWell(
              onHover: (value) {
                context.read<ButtonBloc>().add(
                      HoverChanged(
                        isHovering: value,
                        width: value ? maxWidth : 0.00,
                      ),
                    );
              },
              onTap: () {
                context.read<ButtonBloc>().add(
                      ButtonTapped(width: maxWidth),
                    );
              },
              child: Padding(
                padding: const EdgeInsets.all(2), // Adjust border thickness
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: state.animatedWidth,
                  height: 68,
                  decoration: BoxDecoration(
                    color: state.isHover
                        ? Colors.transparent
                        : const Color(
                            0XFF100E18), // Background color of the button
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      "Portfolio",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PortfolioButtonTablet extends StatelessWidget {
  const PortfolioButtonTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final double maxWidth = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (context) => ButtonBloc(),
      child: BlocBuilder<ButtonBloc, ButtonState>(
        builder: (context, state) {
          return Container(
            width: 220, // Add extra width for the border
            height: 68, // Add extra height for the border
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
              borderRadius: BorderRadius.circular(50),
            ),
            child: InkWell(
              onHover: (value) {
                context.read<ButtonBloc>().add(
                      HoverChanged(
                        isHovering: value,
                        width: value ? maxWidth : 0.00,
                      ),
                    );
              },
              onTap: () {
                context.read<ButtonBloc>().add(
                      ButtonTapped(width: maxWidth),
                    );
              },
              child: Padding(
                padding: const EdgeInsets.all(2), // Adjust border thickness
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: state.animatedWidth,
                  height: 50,
                  decoration: BoxDecoration(
                    color: state.isHover
                        ? Colors.transparent
                        : const Color(
                            0XFF100E18), // Background color of the button
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      "View My Portfolio",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
