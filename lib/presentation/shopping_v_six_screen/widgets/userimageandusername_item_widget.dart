import '../models/userimageandusername_item_model.dart';
import 'package:abiodun_oni_take_home/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserimageandusernameItemWidget extends StatelessWidget {
  UserimageandusernameItemWidget(
    this.userimageandusernameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserimageandusernameItemModel userimageandusernameItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: userimageandusernameItemModelObj?.userImage,
          height: 60.adaptSize,
          width: 60.adaptSize,
        ),
        SizedBox(height: 4.v),
        Container(
          width: 60.h,
          child: Text(
            userimageandusernameItemModelObj.userName!,
            style: theme.textTheme.labelLarge,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
