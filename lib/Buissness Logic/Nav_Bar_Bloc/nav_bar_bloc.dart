import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nav_bar_event.dart';
part 'nav_bar_state.dart';

class NavBarBloc extends Bloc<NavBarEvent, NavBarState> {
  NavBarBloc() : super(NavBarInitial(tabindex: 0)) {
    on<NavBarEvent>((event, emit) {
    if(event is Changeindex){
      emit(NavBarInitial(tabindex: event.tabindex));
    }
    });
  }
}