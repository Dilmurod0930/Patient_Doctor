import 'package:bloc/bloc.dart';
import 'package:med/Screens/Main/bloc/main_state.dart';

class HomeCubit extends Cubit<MainState> {
  HomeCubit() : super(InitialMain());
  int selected = 0;
  change(index) {
    selected = index;
    emit(InitialMain());
  }
}