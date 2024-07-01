part of 'date_picker_cubit.dart';

class DatePickerInitial {
  DateTime dateTime;
  bool bdOpen;
  bool cancel;

  DateTime appointmentDateTime;
  bool appointmentOpen;
  bool appointmentCancel;

  DatePickerInitial(
      {required this.dateTime,
      required this.bdOpen,
      required this.cancel,
      required this.appointmentCancel,
      required this.appointmentDateTime,
      required this.appointmentOpen});
}
