import 'package:bloc/bloc.dart';
import 'package:istasherni/UI/Screens/Landing_Page/landing_page.dart';

part 'page_routing_state.dart';

class PageRoutingCubit extends Cubit<PageRoutingInitial> {
  PageRoutingCubit()
      : super(PageRoutingInitial(currentPage: const LandingPage()));

  void currentPage(var page) => emit(PageRoutingInitial(currentPage: page));
}
