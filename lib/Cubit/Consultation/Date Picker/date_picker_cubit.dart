import 'package:bloc/bloc.dart';

part 'date_picker_state.dart';

class DatePickerCubit extends Cubit<DatePickerInitial> {
  DatePickerCubit()
      : super(DatePickerInitial(
            dateTime: DateTime.now(),
            bdOpen: false,
            cancel: true,
            appointmentCancel: true,
            appointmentDateTime: DateTime.now().add(const Duration(days: 1)),
            appointmentOpen: false));

  void birthDay(DateTime birthDay) => emit(DatePickerInitial(
        dateTime: birthDay,
        bdOpen: state.bdOpen,
        cancel: state.cancel,
        appointmentDateTime: state.appointmentDateTime,
        appointmentCancel: state.appointmentCancel,
        appointmentOpen: state.appointmentOpen,
      ));

  void bdOpen(bool bdOpen) => emit(DatePickerInitial(
        dateTime: state.dateTime,
        bdOpen: bdOpen,
        cancel: state.cancel,
        appointmentDateTime: state.appointmentDateTime,
        appointmentCancel: state.appointmentCancel,
        appointmentOpen: state.appointmentOpen,
      ));

  void cancel(bool cancel) => emit(DatePickerInitial(
        dateTime: state.dateTime,
        bdOpen: state.bdOpen,
        cancel: cancel,
        appointmentDateTime: state.appointmentDateTime,
        appointmentCancel: state.appointmentCancel,
        appointmentOpen: state.appointmentOpen,
      ));

  void appointment(DateTime dateTime) => emit(DatePickerInitial(
        dateTime: state.dateTime,
        bdOpen: state.bdOpen,
        cancel: state.cancel,
        appointmentDateTime: dateTime,
        appointmentCancel: state.appointmentCancel,
        appointmentOpen: state.appointmentOpen,
      ));

  void appointmentOpen(bool appointmentOpen) => emit(DatePickerInitial(
        dateTime: state.dateTime,
        bdOpen: state.bdOpen,
        cancel: state.cancel,
        appointmentDateTime: state.appointmentDateTime,
        appointmentCancel: state.appointmentCancel,
        appointmentOpen: appointmentOpen,
      ));

  void appointmentCancel(bool appointmentCancel) => emit(DatePickerInitial(
        dateTime: state.dateTime,
        bdOpen: state.bdOpen,
        cancel: state.cancel,
        appointmentDateTime: state.appointmentDateTime,
        appointmentCancel: appointmentCancel,
        appointmentOpen: state.appointmentOpen,
      ));
}
