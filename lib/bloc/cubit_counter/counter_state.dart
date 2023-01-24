part of 'counter_cubit.dart';

@immutable
abstract class CounterCubitState {
  final int sayac;
  const CounterCubitState({required this.sayac});
}

class CounterInitial extends CounterCubitState {
  const CounterInitial({required int startValue}) : super(sayac: startValue);
}

class CounterIncrement extends CounterCubitState {
  const CounterIncrement({required int sayacs}) : super(sayac: sayacs);
}
