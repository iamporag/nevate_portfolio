import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/bloc/bloc/button_bloc.dart';

class PortfolioButton extends StatelessWidget {
  const PortfolioButton({super.key});

  @override
  Widget build(BuildContext context) {
    final double maxWidth = MediaQuery.of(context).size.width * 0.18.w;

    return BlocProvider(
      create: (context) => ButtonBloc(),
      child: BlocBuilder<ButtonBloc, ButtonState>(
        builder: (context, state) {
          return Container(
            width: maxWidth + 4.w, // Add extra width for the border
            height: 80.h, // Add extra height for the border
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
            child: InkWell(
              onHover: (value) {
                context.read<ButtonBloc>().add(
                      HoverChanged(
                        isHovering: value,
                        width: value ? maxWidth : 0.00.w,
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
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: state.isHover
                        ? Colors.transparent
                        : const Color(
                            0XFF100E18), // Background color of the button
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Center(
                    child: Text(
                      "View My Portfolio",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
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
            width: 320.w, // Add extra width for the border
            height: 68.h, // Add extra height for the border
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
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: InkWell(
              onHover: (value) {
                context.read<ButtonBloc>().add(
                      HoverChanged(
                        isHovering: value,
                        width: value ? maxWidth : 0.00.w,
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
                  height: 68.h,
                  decoration: BoxDecoration(
                    color: state.isHover
                        ? Colors.transparent
                        : const Color(
                            0XFF100E18), // Background color of the button
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Center(
                    child: Text(
                      "Portfolio",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48.sp,
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
            width: 220.w, // Add extra width for the border
            height: 68.h, // Add extra height for the border
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
            child: InkWell(
              onHover: (value) {
                context.read<ButtonBloc>().add(
                      HoverChanged(
                        isHovering: value,
                        width: value ? maxWidth : 0.00.w,
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
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: state.isHover
                        ? Colors.transparent
                        : const Color(
                            0XFF100E18), // Background color of the button
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Center(
                    child: Text(
                      "View My Portfolio",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.sp,
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
