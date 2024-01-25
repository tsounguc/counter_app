part of 'counter_bloc.dart';

sealed class CounterEvent {}

// Making the event classes final makes so they can't be
// extended or implemented outside of this library
final class CounterIncremented extends CounterEvent {}

final class CounterDecremented extends CounterEvent {}
