import 'package:flutter_svg/flutter_svg.dart';
import '../shopping_v_six_screen/widgets/userimageandusername_item_widget.dart';
import 'bloc/shopping_v_six_bloc.dart';
import 'models/shopping_v_six_model.dart';
import 'models/userimageandusername_item_model.dart';
import 'package:abiodun_oni_take_home/core/app_export.dart';
import 'package:abiodun_oni_take_home/widgets/custom_elevated_button.dart';
import 'package:abiodun_oni_take_home/widgets/custom_icon_button.dart';
import 'package:abiodun_oni_take_home/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ShoppingVSixScreen extends StatelessWidget {
  const ShoppingVSixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ShoppingVSixBloc>(
      create: (context) => ShoppingVSixBloc(ShoppingVSixState(
        shoppingVSixModelObj: ShoppingVSixModel(),
      ))
        ..add(ShoppingVSixInitialEvent()),
      child: ShoppingVSixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildPayLaterEverywhere(context),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Opacity(
                          opacity: 0.8,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 2.v,
                              bottom: 3.v,
                            ),
                            child: BlocSelector<ShoppingVSixBloc,
                                ShoppingVSixState, TextEditingController?>(
                              selector: (state) => state.searchController,
                              builder: (context, searchController) {
                                return CustomSearchView(
                                  controller: searchController,
                                  hintText: "msg_search_for_products".tr,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: CustomIconButton(
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillGrayA,
                            child: SvgPicture.asset(
                              ImageConstant.imgThumbsUp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 21.v),
                PoductViewSection()
                    .animate()
                    .fadeIn(duration: 300.ms)
                    .slideY(begin: .1, end: .0),
                SizedBox(height: 32.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_featured_merchants".tr,
                          style: theme.textTheme.titleMedium!.copyWith(
                            color: appTheme.blueGray800,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Text(
                            "lbl_view_all".tr,
                            textAlign: TextAlign.right,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: appTheme.indigoA700,
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 37.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    right: 28.h,
                  ),
                  child: BlocSelector<ShoppingVSixBloc, ShoppingVSixState,
                      ShoppingVSixModel?>(
                    selector: (state) => state.shoppingVSixModelObj,
                    builder: (context, shoppingVSixModelObj) {
                      return GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 82.v,
                          crossAxisCount: 4,
                          mainAxisSpacing: 32.h,
                          crossAxisSpacing: 32.h,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: shoppingVSixModelObj
                                ?.userimageandusernameItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          UserimageandusernameItemModel model =
                              shoppingVSixModelObj
                                      ?.userimageandusernameItemList[index] ??
                                  UserimageandusernameItemModel();

                          return UserimageandusernameItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 79.v),
                Divider(
                  indent: 20.h,
                  endIndent: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget for handlng the
  Widget _buildPayLaterEverywhere(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 158.h,
            margin: EdgeInsets.only(
              left: 4.h,
              bottom: 17.v,
            ),
            child: Text(
              "msg_pay_later_everywhere".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              width: 17.h,
              margin: EdgeInsets.only(
                left: 7.h,
                top: 49.v,
                bottom: 33.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder8,
              ),
              child: Text(
                "lbl".tr,
                style: CustomTextStyles.labelLargeProductSansIndigoA700,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 24.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "msg_shopping_limit".tr,
                    style: CustomTextStyles.labelLargeBluegray900,
                  ),
                ),
                SizedBox(height: 8.v),
                CustomElevatedButton(
                  width: 134.h,
                  text: "lbl_activate_credit".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PoductViewSection extends StatelessWidget {
  const PoductViewSection();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
        height: 405.v,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: appTheme.gray10001,
        ),
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: gadgetList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0.v,
            mainAxisSpacing: 10.0.v,
          ),
          itemBuilder: (context, index) {
            final item = gadgetList[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: AspectRatio(
                aspectRatio: 161.h / 178.v,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.v, horizontal: 10.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: appTheme.whiteA700,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Center(
                              child: Container(
                                height: index == 0 ? 98.v : 105.v,
                                width: index == 0 ? 150.v : 200.v,
                                child: Image(
                                    fit: index == 0
                                        ? BoxFit.contain
                                        : BoxFit.cover,
                                    image: AssetImage(item.itemImage ?? '')),
                              ),
                            ),
                            //  SizedBox(height: 3.v),
                            //Spacer(),
                            Row(
                              children: [
                                Container(
                                  width: 120.h,
                                  child: Text(
                                    item.name ?? '',
                                    style: CustomTextStyles.titleMediumExtraBold
                                        .copyWith(
                                      color: appTheme.black900,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.v),
                            Padding(
                              padding: EdgeInsets.only(right: 4.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    item.pirce ?? '',
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.titleSmallIndigoA700
                                        .copyWith(
                                      color: appTheme.indigoA700,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 14.h),
                                    child: Text(
                                      item.oldPirce ?? '',
                                      style: CustomTextStyles
                                          .labelLargeBluegray200
                                          .copyWith(
                                        decoration: TextDecoration.lineThrough,
                                        color: appTheme.blueGray200,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CustomIconButton(
                                    color: appTheme.whiteA700,
                                    height: 48.adaptSize,
                                    width: 53.adaptSize,
                                    padding: EdgeInsets.all(4.h),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        item.infoLogo.toString(),
                                        height: 20,
                                        width: 30,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
