import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CounterInitial(startValue: 0));

  void increment() {
    emit(CounterIncrement(sayacs: state.sayac + 1));
  }

  void decrement() {
    emit(CounterIncrement(sayacs: state.sayac - 1));
  }
}
