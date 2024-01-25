import 'package:abiodun_oni_take_home/presentation/shopping_v_six_screen/models/gadget_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userimageandusername_item_model.dart';
import 'package:abiodun_oni_take_home/presentation/shopping_v_six_screen/models/shopping_v_six_model.dart';
part 'shopping_v_six_event.dart';
part 'shopping_v_six_state.dart';

/// A bloc that manages the state of a ShoppingVSix according to the event that is dispatched to it.
class ShoppingVSixBloc extends Bloc<ShoppingVSixEvent, ShoppingVSixState> {
  ShoppingVSixBloc(ShoppingVSixState initialState) : super(initialState) {
    on<ShoppingVSixInitialEvent>(_onInitialize);
  }

  List<UserimageandusernameItemModel> fillUserimageandusernameItemList() {
    return [
      UserimageandusernameItemModel(
          userImage: ImageConstant.imgUser, userName: "Justrite"),
      UserimageandusernameItemModel(
          userImage: ImageConstant.imgFloatingIconRed600, userName: "Slot "),
      UserimageandusernameItemModel(
          userImage: ImageConstant.imgFrame37720, userName: "Hubmart "),
      UserimageandusernameItemModel(
          userImage: ImageConstant.imgUserGray10001, userName: "ogabassey "),
      UserimageandusernameItemModel(
          userImage: ImageConstant.imgFloatingIcon, userName: "Just Used"),
      UserimageandusernameItemModel(
          userImage: ImageConstant.imgPlay, userName: "Just fones"),
      UserimageandusernameItemModel(userName: "Orile Restaurant"),
      UserimageandusernameItemModel(userName: "Pointek"),
      UserimageandusernameItemModel(userName: "Dreamworks "),
      UserimageandusernameItemModel(userName: "Casper Stores")
    ];
  }

  _onInitialize(
    ShoppingVSixInitialEvent event,
    Emitter<ShoppingVSixState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        shoppingVSixModelObj: state.shoppingVSixModelObj?.copyWith(
      userimageandusernameItemList: fillUserimageandusernameItemList(),
    )));
  }
}

//list of products
List<GadgetItemModel> gadgetList = [
  GadgetItemModel(
      name: 'Nokia G20',
      itemImage: ImageConstant.imgProductImage,
      infoLogo: ImageConstant.pay_40,
      pirce: 'lbl_39_780'.tr,
      oldPirce: 'lbl_88_000'.tr),
  GadgetItemModel(
      name: 'iPhone XS Max 4GB..',
      itemImage: ImageConstant.ogaItem,
      infoLogo: ImageConstant.ogabassey,
      pirce: 'lbl_295_999'.tr,
      oldPirce: 'lbl_315_000'.tr),
  GadgetItemModel(
      name: 'Anker Soundcore..',
      itemImage: ImageConstant.okayItem,
      infoLogo: ImageConstant.mates,
      pirce: 'lbl_39_780'.tr,
      oldPirce: 'lbl_88_000'.tr),
  GadgetItemModel(
      name: 'iPhone 12 Pro',
      itemImage: ImageConstant.imateItem,
      infoLogo: ImageConstant.okay,
      pirce: 'lbl_490_500'.tr,
      oldPirce: 'lbl_515_000'.tr),
  GadgetItemModel(
      name: 'iPhone 12 Pro',
      itemImage: ImageConstant.imateItem,
      infoLogo: ImageConstant.okay,
      pirce: 'lbl_490_500'.tr,
      oldPirce: 'lbl_515_000'.tr),
  GadgetItemModel(
      name: 'Anker Soundcore..',
      itemImage: ImageConstant.okayItem,
      infoLogo: ImageConstant.okay,
      pirce: 'lbl_39_780'.tr,
      oldPirce: 'lbl_88_000'.tr),
];
