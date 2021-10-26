import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authintication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());
}
