import 'package:bloc/bloc.dart';

import '../../../../UI/Screens/Consultation/Mobile/Sections/mobile_section_1.dart';

part 'mobile_consultation_routing_state.dart';

class MobileConsultationRoutingCubit
    extends Cubit<MobileConsultationRoutingInitial> {
  MobileConsultationRoutingCubit()
      : super(MobileConsultationRoutingInitial(
            section: MobileConsultationSection1(), sectionNo: 1));

  void consultationRouting(var section, int sectionNo) =>
      emit(MobileConsultationRoutingInitial(
        section: section,
        sectionNo: sectionNo,
      ));
}
