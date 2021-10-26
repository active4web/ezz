import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  static UserCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  int selectedIndex = 3;
  void changeNavBar(int value) {
    selectedIndex = value;
    emit(ChangeNaveItem());
  }
}
