import 'package:bloc/bloc.dart';

part 'date_picker_state.dart';

class DatePickerCubit extends Cubit<DatePickerInitial> {
  DatePickerCubit()
      : super(DatePickerInitial(
            dateTime: DateTime.now(), bdOpen: false, cancel: true));

  void birthDay(DateTime birthDay) => emit(DatePickerInitial(
      dateTime: birthDay, bdOpen: state.bdOpen, cancel: state.cancel));

  void bdOpen(bool bdOpen) => emit(DatePickerInitial(
      dateTime: state.dateTime, bdOpen: bdOpen, cancel: state.cancel));

  void cancel(bool cancel) => emit(DatePickerInitial(
      dateTime: state.dateTime, bdOpen: state.bdOpen, cancel: cancel));
}
