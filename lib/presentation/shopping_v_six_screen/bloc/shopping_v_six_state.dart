// ignore_for_file: must_be_immutable

part of 'shopping_v_six_bloc.dart';

/// Represents the state of ShoppingVSix in the application.
class ShoppingVSixState extends Equatable {
  ShoppingVSixState({
    this.searchController,
    this.shoppingVSixModelObj,
  });

  TextEditingController? searchController;

  ShoppingVSixModel? shoppingVSixModelObj;

  @override
  List<Object?> get props => [
        searchController,
        shoppingVSixModelObj,
      ];
  ShoppingVSixState copyWith({
    TextEditingController? searchController,
    ShoppingVSixModel? shoppingVSixModelObj,
  }) {
    return ShoppingVSixState(
      searchController: searchController ?? this.searchController,
      shoppingVSixModelObj: shoppingVSixModelObj ?? this.shoppingVSixModelObj,
    );
  }
}
