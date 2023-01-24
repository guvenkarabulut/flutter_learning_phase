import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(startValue: 60)) {
    on<CounterIncrementEvent>((event, emit) {
      // TODO: implement event handler
      emit(CounterIncrement(sayacs: state.sayac + 1));
    });
    on<CounterDecrementEvent>((event, emit) {
      // TODO: implement event handler
      emit(CounterIncrement(sayacs: state.sayac - 1));
    });
  }
}
