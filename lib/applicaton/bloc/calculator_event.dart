part of 'calculator_bloc.dart';

@freezed
class CalculatorEvent with _$CalculatorEvent {
  const factory CalculatorEvent.started() = _Started;
  const factory CalculatorEvent.onButtonClick(String value) = _OnButtonClick;
}
