part of 'consultation_values_section1_cubit.dart';

class ConsultationValuesInitial {
  final String firstName;
  final String middleName;
  final String lastName;
  final String contactNumber;
  final String emailAddress;
  final String dob;
  final String city;
  final String state;
  final String language;
  final String desc;
  final String hearAboutUs;

  ConsultationValuesInitial({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.contactNumber,
    required this.emailAddress,
    required this.dob,
    required this.city,
    required this.state,
    required this.language,
    required this.desc,
    required this.hearAboutUs,
  });

  ConsultationValuesInitial copyWith({
    String? firstName,
    String? middleName,
    String? lastName,
    String? contactNumber,
    String? emailAddress,
    String? dob,
    String? city,
    String? state,
    String? language,
    String? desc,
    String? hearAboutUs,
  }) {
    return ConsultationValuesInitial(
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      lastName: lastName ?? this.lastName,
      contactNumber: contactNumber ?? this.contactNumber,
      emailAddress: emailAddress ?? this.emailAddress,
      dob: dob ?? this.dob,
      city: city ?? this.city,
      state: state ?? this.state,
      language: language ?? this.language,
      desc: desc ?? this.desc,
      hearAboutUs: hearAboutUs ?? this.hearAboutUs,
    );
  }
}
