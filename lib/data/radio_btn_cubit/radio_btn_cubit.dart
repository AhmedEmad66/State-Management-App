import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'radio_btn_state.dart';

class RadioBtnCubit extends Cubit<int> {
  RadioBtnCubit() : super(0);

  void selectRadio(int value) => emit(value);
}
