import '../../../core/app_export.dart';

/// This class is used in the [userimageandusername_item_widget] screen.
class UserimageandusernameItemModel {
  UserimageandusernameItemModel({
    this.userImage,
    this.userName,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgUser;
    userName = userName ?? "Justrite";
    id = id ?? "";
  }

  String? userImage;

  String? userName;

  String? id;
}
