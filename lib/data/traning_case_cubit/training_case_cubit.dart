import 'package:bloc/bloc.dart';

part 'training_case_state.dart';

class TrainingCaseCubit extends Cubit<TrainingCaseState> {
  TrainingCaseCubit() : super(TrainingCaseInitial());

  onPressedLetsTrain() {
    emit(TrainingCaseIn());
  }

  onPressedFinishTraining() {
    emit(TrainingCaseInitial());
  }

  onPressedHold() {
    emit(TrainingCaseHold());
  }

  onPressedWriteComment() {
    emit(TrainingCaseWriteComment());
  }
}