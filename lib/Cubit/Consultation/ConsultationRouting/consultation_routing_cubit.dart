import 'package:bloc/bloc.dart';
import 'package:istasherni/UI/Screens/Consultation/Sections/consultation_section_1.dart';

part 'consultation_routing_state.dart';

class ConsultationRoutingCubit extends Cubit<ConsultationRoutingInitial> {
  ConsultationRoutingCubit()
      : super(ConsultationRoutingInitial(
            section: ConsultationSection1(), sectionNo: 1));

  void consultationRouting(var section, int sectionNo) =>
      emit(ConsultationRoutingInitial(
        section: section,
        sectionNo: sectionNo,
      ));
}
