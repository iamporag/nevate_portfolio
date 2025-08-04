import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'button_event.dart';
part 'button_state.dart';

class ButtonBloc extends Bloc<ButtonEvent, ButtonState> {
  ButtonBloc() : super(ButtonState(isHover: false, animatedWidth: 0.00)) {
    on<HoverChanged>((event, emit) {
      emit(state.copyWith(
          isHover: event.isHovering, animatedWidth: event.width));
    });
    on<ButtonTapped>((event, emit) {
      emit(state.copyWith(animatedWidth: event.width));
    });
  }
}
