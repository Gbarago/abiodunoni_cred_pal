import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallAvenirBluegray300 =>
      theme.textTheme.bodySmall!.avenir.copyWith(
        color: appTheme.blueGray300,
      );
  // Label text style
  static get labelLargeAxiformaWhiteA700 =>
      theme.textTheme.labelLarge!.axiforma.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBluegray200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray200,
      );
  static get labelLargeBluegray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get labelLargeIndigoA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigoA700,
      );
  static get labelLargeProductSansIndigoA700 =>
      theme.textTheme.labelLarge!.productSans.copyWith(
        color: appTheme.indigoA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeff274fed => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF274FED),
      );
  static get labelLargeffc1c1ce => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFC1C1CE),
      );
  // Title text style
  static get titleMediumExtraBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleSmallBlack => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get titleSmallIndigoA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA700,
      );
  static get titleSmallIndigoA700Black => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA700,
        fontWeight: FontWeight.w900,
      );
  static get titleSmallff274fed => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF274FED),
      );
}

extension on TextStyle {
  TextStyle get avenir {
    return copyWith(
      fontFamily: 'Avenir',
    );
  }

  TextStyle get productSans {
    return copyWith(
      fontFamily: 'Product Sans',
    );
  }

  TextStyle get axiforma {
    return copyWith(
      fontFamily: 'Axiforma',
    );
  }
}
