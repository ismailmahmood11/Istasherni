import 'package:bloc/bloc.dart';

part 'consultation_values_state.dart';

class ConsultationValuesCubit extends Cubit<ConsultationValuesInitial> {
  ConsultationValuesCubit()
      : super(
          ConsultationValuesInitial(
            state: '',
            desc: '',
            city: '',
            contactNumber: '',
            dob: '',
            emailAddress: '',
            firstName: '',
            hearAboutUs: '',
            language: 'English',
            lastName: '',
            middleName: '',
          ),
        );

  void consultationValues(
    String firstName,
    String middleName,
    String lastName,
    String contactNumber,
    String emailAddress,
    String dob,
    String city,
    String state,
    String language,
    String desc,
    String hearAboutUs,
  ) {
    emit(
      ConsultationValuesInitial(
        firstName: firstName,
        middleName: middleName,
        lastName: lastName,
        contactNumber: contactNumber,
        emailAddress: emailAddress,
        dob: dob,
        city: city,
        state: state,
        language: language,
        desc: desc,
        hearAboutUs: hearAboutUs,
      ),
    );
  }
}
