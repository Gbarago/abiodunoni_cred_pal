import 'package:abiodun_oni_take_home/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.padding,
      this.decoration,
      this.child,
      this.onTap,
      this.color})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final Color? color;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: color ?? appTheme.gray900,
                  borderRadius: BorderRadius.circular(30.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGrayA => BoxDecoration(
        color: appTheme.gray50A2,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo700,
        borderRadius: BorderRadius.circular(30.h),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink500,
        borderRadius: BorderRadius.circular(30.h),
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001,
        borderRadius: BorderRadius.circular(30.h),
      );
}
