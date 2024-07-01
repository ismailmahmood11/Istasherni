import 'package:bloc/bloc.dart';

part 'case_details_state.dart';

class CaseDetailsCubit extends Cubit<CaseDetailsInitial> {
  CaseDetailsCubit()
      : super(
          CaseDetailsInitial(
            title: 'test',
            img: 'assets/images/cases_Images/cases1.png',
            date: 'test',
            desc: 'test',
          ),
        );

  void caseDetails(
    String title,
    String desc,
    String img,
    String date,
  ) =>
      emit(CaseDetailsInitial(title: title, img: img, date: date, desc: desc));
}
