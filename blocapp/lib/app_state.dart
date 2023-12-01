class AppState {
  int counterValue;

  int result;
  AppState({
    required this.counterValue,
    this.result = 0,
  });
}

class InitState extends AppState {
  InitState() : super(counterValue: 0, result: 0);
}
