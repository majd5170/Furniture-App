import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_page_fur_event.dart';
part 'home_page_fur_state.dart';

class HomePageFurBloc extends Bloc<HomePageFurEvent, HomePageFurState> {
  HomePageFurBloc() : super(HomePageFurInitial()) {
    on<HomePageFurEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
