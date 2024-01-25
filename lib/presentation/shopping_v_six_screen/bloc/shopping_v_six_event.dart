// ignore_for_file: must_be_immutable

part of 'shopping_v_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShoppingVSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShoppingVSixEvent extends Equatable {}

/// Event that is dispatched when the ShoppingVSix widget is first created.
class ShoppingVSixInitialEvent extends ShoppingVSixEvent {
  @override
  List<Object?> get props => [];
}
