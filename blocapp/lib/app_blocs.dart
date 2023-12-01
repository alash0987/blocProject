import 'package:blocapp/app_events.dart';
import 'package:blocapp/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocs extends Bloc<AppEvents, AppState> {
  AppBlocs() : super(InitState()) {
    on<Increment>(
      (event, emit) {
        emit(AppState(counterValue: state.counterValue + 1));
      },
    );
    on<Decrement>((event, emit) {
      emit(AppState(
          counterValue: state.counterValue > 0 ? state.counterValue - 1 : 0));
    });
  }
}
