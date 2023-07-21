import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../res/my_strings.dart';
import '../../state_management_cubit/filter_bar_using_cubit.dart';

part 'filtercontroll_state.dart';

class FiltercontrollCubit extends Cubit<FiltercontrollState> {
  FiltercontrollCubit() : super(FiltercontrollInitial());
  int index = 0;
  String getContent() {
    // Switch Case for Content
    switch (index) {
      case 0:
        return '${btnNames[index]} Categories';
      case 1:
        return '${btnNames[index]} Category';
      case 2:
        return '${btnNames[index]} Category';
      case 3:
        return '${btnNames[index]} Category';
      case 4:
        return '${btnNames[index]} Category';
      case 5:
        return '${btnNames[index]} Category';
      case 6:
        return '${btnNames[index]} Category';
      default:
        return '';
    }
  }

  buttonClicked(int i) {
    index = i;

    emit(Filtercontrollselselcted());
  }
}
