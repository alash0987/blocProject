import 'package:blocapp/app_events.dart';
import 'package:blocapp/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocs extends Bloc<AppEvents, AppState> {
  int first;
  int second;

  AppBlocs({this.first = 0, this.second = 0}) : super(InitState()) {
    on<Increment>(
      (event, emit) {
        emit(AppState(
            counterValue: state.counterValue + 1, result: state.result));
      },
    );
    on<Decrement>((event, emit) {
      emit(AppState(
          counterValue: state.counterValue > 0 ? state.counterValue - 1 : 0,
          result: state.result));
    });
    on<FindSum>((event, emit) {
      emit(
        AppState(
          counterValue: state.counterValue,
          result: event.one + event.two,
        ),
      );
    });
  }
}
