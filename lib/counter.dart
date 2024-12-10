import 'package:mobx/mobx.dart';

// Include the generated file
part 'counter.g.dart';

// Define the store class
class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  // Observable property
  @observable
  int count = 0;

  // Action to modify the observable
  @action
  void increment() {
    count++;
  }
  @action
  void reset(){
    count=0;
  }
}
