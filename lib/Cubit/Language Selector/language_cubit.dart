import 'package:bloc/bloc.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageInitial> {
  LanguageCubit() : super(LanguageInitial(language: 'en'));

  void languageSelector(String language) =>
      emit(LanguageInitial(language: language));
}
