import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'math_state.dart';

class MathCubit extends Cubit<MathState> {
  MathCubit() : super(const MathInitial(0));

  int count = 0;

  void increment() {
    emit(const MathLoading("Loading"));
    count++;
    emit(MathInitial(count));
  }

  void dencrement() {
    emit(const MathLoading("Loading"));
    count--;
    emit(MathInitial(count));
  }

  void reset() {
    emit(const MathLoading("Loading"));
    count = 0;
    emit(MathInitial(count));
  }
}
