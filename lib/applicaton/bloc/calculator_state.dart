part of 'calculator_bloc.dart';

@freezed
class CalculatorState with _$CalculatorState {
  const factory CalculatorState({
    required String input,
    required String output,
    required bool hideinput,
    required double outputsize,
  }) = _Initial;

  factory CalculatorState.initail() => const CalculatorState(
        input: '',
        output: '',
        hideinput: false,
        outputsize: 34,
      );
}
