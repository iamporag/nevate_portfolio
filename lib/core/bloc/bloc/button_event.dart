part of 'button_bloc.dart';

abstract class ButtonEvent {}

class HoverChanged extends ButtonEvent {
  final bool isHovering;
  final double width;

  HoverChanged({required this.isHovering, required this.width});
}

class ButtonTapped extends ButtonEvent {
  final double width;

  ButtonTapped({required this.width});
}
