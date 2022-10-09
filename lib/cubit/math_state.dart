part of 'math_cubit.dart';

abstract class MathState extends Equatable {
  const MathState();

  @override
  List<Object> get props => [];
}

class MathInitial extends MathState {
  final int data;
  const MathInitial(this.data);

  @override
  // TODO: implement props
  List<Object> get props => [data];
}

class MathLoading extends MathState {
  final String data;
  const MathLoading(this.data);

  @override
  // TODO: implement props
  List<Object> get props => [data];
}
