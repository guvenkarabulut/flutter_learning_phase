part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  final int sayac;
  const CounterState({required this.sayac});
}

class CounterInitial extends CounterState {
  const CounterInitial({required int startValue}) : super(sayac: startValue);
}

class CounterIncrement extends CounterState {
  const CounterIncrement({required int sayacs}) : super(sayac: sayacs);
}
