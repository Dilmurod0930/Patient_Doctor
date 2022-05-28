import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:med/Screens/Main/bloc/main_state.dart';

class HomeCubit extends Cubit<MainState> {
  HomeCubit() : super(InitialMain());
  int tabIndex = 0;
  int selected = 0;
  bool checkTable = false;
  int gender = 0;
  bool profileVisibility = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController dataBirhtController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  changeProfileVis(){
    profileVisibility=!profileVisibility;
    emit(InitialMain());
  }
  selectGender(index) {
    gender = index;
    emit(InitialMain());
  }

  changeTy(index) {
    tabIndex = index;
    emit(InitialMain());
  }

  checkingTable() {
    checkTable = !checkTable;
    emit(InitialMain());
  }

  changePage(index) {
    selected = index;
    emit(InitialMain());
  }
}