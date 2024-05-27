import 'package:bloc/bloc.dart';

part 'screen_type_state.dart';

class ScreenTypeCubit extends Cubit<ScreenTypeInitial> {
  ScreenTypeCubit() : super(ScreenTypeInitial(mobileScreen: false));

  void iSMobileScreen(bool isMobileScreen) =>
      emit(ScreenTypeInitial(mobileScreen: isMobileScreen));
}
