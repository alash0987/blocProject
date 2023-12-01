class AppState {
  int counterValue;
  AppState({required this.counterValue});
}

class InitState extends AppState {
  InitState() : super(counterValue: 0);
}
