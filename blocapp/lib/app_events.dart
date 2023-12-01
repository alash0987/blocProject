class AppEvents {}

class Increment extends AppEvents {}

class Decrement extends AppEvents {}

class FindSum extends AppEvents {
  int one;
  int two;
  FindSum({required this.one, required this.two});
}
