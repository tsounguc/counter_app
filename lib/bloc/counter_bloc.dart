import 'package:flutter_bloc/flutter_bloc.dart';

sealed class CounterEvent {}

// Making the event classes final makes so they can't be
// extended or implemented outside of this library
final class CounterIncremented extends CounterEvent {}

final class CounterDecremented extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecremented>((event, emit) {
      emit(state - 1);
    });
  }
}
