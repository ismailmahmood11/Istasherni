import 'package:bloc/bloc.dart';

part 'consultation_values_section2_state.dart';

class ConsultationValuesSection2Cubit
    extends Cubit<ConsultationValuesSection2Initial> {
  ConsultationValuesSection2Cubit()
      : super(ConsultationValuesSection2Initial(
          service: 'Legal Consultation \$120',
          time: '9:00',
          page: 0,
          date: '',
          priceID: '',
        ));

  void service(String service) => emit(ConsultationValuesSection2Initial(
        service: service,
        time: state.time,
        page: state.page,
        date: state.date,
        priceID: state.priceID,
      ));

  void time(String time) => emit(ConsultationValuesSection2Initial(
        service: state.service,
        time: time,
        page: state.page,
        date: state.date,
        priceID: state.priceID,
      ));

  void priceID(String priceID) => emit(ConsultationValuesSection2Initial(
        service: state.service,
        time: state.time,
        page: state.page,
        date: state.date,
        priceID: priceID,
      ));

  void consultationValue(String time, int pages, String service, String date) =>
      emit(
        ConsultationValuesSection2Initial(
          service: service,
          time: time,
          date: date,
          page: pages,
          priceID: state.priceID,
        ),
      );
}
