import 'package:bloc/bloc.dart';

part 'scroll_position_state.dart';

class ScrollPositionCubit extends Cubit<ScrollPositionInitial> {
  ScrollPositionCubit() : super(ScrollPositionInitial(scrollPosition: 0));

  void scrollPosition(double pixels) =>
      emit(ScrollPositionInitial(scrollPosition: pixels));
}
