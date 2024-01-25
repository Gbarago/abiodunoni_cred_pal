import 'package:abiodun_oni_take_home/core/utils/image_constant.dart';

class GadgetItemModel {
  GadgetItemModel(
      {this.itemImage, this.infoLogo, this.oldPirce, this.pirce, this.name}) {
    itemImage = itemImage ?? ImageConstant.imgUser;
    infoLogo = infoLogo;
    oldPirce = oldPirce ?? "";
    pirce = pirce ?? "";
    name = name ?? "";
  }

  String? itemImage;

  String? infoLogo;

  String? oldPirce;

  String? pirce;
  String? name;
}
