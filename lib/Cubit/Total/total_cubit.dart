import 'package:bloc/bloc.dart';

part 'total_state.dart';

class TotalCubit extends Cubit<TotalInitial> {
  TotalCubit() : super(TotalInitial(total: 0));

  void total(int total) => emit(TotalInitial(total: total));
}
