import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'password_visibility_state.dart';

class PasswordVisibilityCubit extends Cubit<bool> {
  PasswordVisibilityCubit() : super(false);
  void toggleVisibility() => emit(!state);
}
