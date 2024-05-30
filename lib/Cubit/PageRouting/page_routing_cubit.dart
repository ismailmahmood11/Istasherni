import 'package:bloc/bloc.dart';
import 'package:istasherni/UI/Screens/Landing_Page/landing_page.dart';

part 'page_routing_state.dart';

class PageRoutingCubit extends Cubit<PageRoutingInitial> {
  PageRoutingCubit()
      : super(
          PageRoutingInitial(
            currentPage: const LandingPage(),
            pageName: 'LandingPage',
            isMobileNavPressed: false,
          ),
        );

  void currentPage(var page, String pageName) => emit(PageRoutingInitial(
        currentPage: page,
        pageName: pageName,
        isMobileNavPressed: state.isMobileNavPressed,
      ));

  void isMobileNavPressed(pressed) => emit(
        PageRoutingInitial(
          currentPage: state.currentPage,
          pageName: state.pageName,
          isMobileNavPressed: pressed,
        ),
      );
}
