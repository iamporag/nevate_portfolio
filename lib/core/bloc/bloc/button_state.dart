part of 'button_bloc.dart';

class ButtonState extends Equatable {
  final bool isHover;
  final double animatedWidth;

  const ButtonState({required this.isHover, required this.animatedWidth});

  ButtonState copyWith({bool? isHover, double? animatedWidth}) {
    return ButtonState(
        isHover: isHover ?? this.isHover,
        animatedWidth: animatedWidth ?? this.animatedWidth);
  }

  @override
  List<Object?> get props => [isHover, animatedWidth];
}
