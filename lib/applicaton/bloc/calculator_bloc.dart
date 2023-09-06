import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:math_expressions/math_expressions.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';
part 'calculator_bloc.freezed.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState.initail()) {
    on<_Started>((event, emit) {
      emit(state);
    });
    on<_OnButtonClick>((event, emit) {
      if (event.value == 'AC') {
        emit(state.copyWith(input: ' ', output: ' '));
      } else if (event.value == '<') {
        if (state.input.isNotEmpty) {
          var userinput = state.input;
          userinput = userinput.substring(0, userinput.length - 1);
          emit(state.copyWith(input: userinput));
        }
      } else if (event.value == '=') {
        if (state.input.isNotEmpty) {
          var allinput = state.input;
          allinput = allinput.replaceAll('x', '*');

          Parser p = Parser();

          Expression expression = p.parse(allinput);

          ContextModel cm = ContextModel();

          var finalvalue = expression.evaluate(EvaluationType.REAL, cm);

          emit(state.copyWith(
            output: finalvalue.toString(),
          ));
          if (state.output.endsWith('.0')) {
            emit(state.copyWith(
                output: state.output.substring(
              0,
              state.output.length - 2,
            )));
          }
          // var splitoutput = state.output;
          // String exponel = splitoutput.split('.').elementAt(1);
          // String mainnvalue = splitoutput.split('.').elementAt(0);
          // exponel.substring(0, 3);

          // emit(state.copyWith(output: mainnvalue + exponel));

          if (state.input != state.output) {
            // semt to cloud firtestore

            FirebaseFirestore.instance.collection("User history").add({
              "Input": state.input,
              "Output": state.output,
              "Timestamp": Timestamp.now(),
            });
          }

          emit(state.copyWith(
            hideinput: true,
            outputsize: 50,
            input: state.output,
          ));
        }
      } else {
        emit(state.copyWith(
          input: state.input + event.value,
          hideinput: false,
          outputsize: 34,
        ));
      }
    });
  }
}
