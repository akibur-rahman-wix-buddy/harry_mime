import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harry_mine/common_widgets/auth_button.dart';
import 'package:harry_mine/constants/text_font_style.dart';
import 'package:harry_mine/gen/assets.gen.dart';
import 'package:harry_mine/gen/colors.gen.dart';
import 'package:harry_mine/helpers/all_routes.dart';
import 'package:harry_mine/helpers/di.dart';
import 'package:harry_mine/helpers/navigation_service.dart';
import 'package:harry_mine/helpers/ui_helpers.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    appData.write('isFirstTime', false);
    return Scaffold(
      //backgroundColor: AppColors.allPrimaryColor,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.images.splashScreen.path),
                fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UIHelper.verticalSpace(30.h),
                  Image.asset(
                    Assets.images.splashVector.path,
                    height: 286.h,
                    width: 318.w,
                  ),
                  UIHelper.verticalSpaceLarge,
                  // Text(
                  //   "Business Ideas Generator",
                  //   textAlign: TextAlign.center,
                  //   style: TextFontStyle.headline32FFFFFFRoboto500
                  //       .copyWith(fontFamily: 'Merriweather'),
                  // ),
                  // UIHelper.verticalSpaceMedium,
                  // Text(
                  //   "Never run out of ideas again!",
                  //   textAlign: TextAlign.center,
                  //   style: TextFontStyle.title28cA5ADBALobster700
                  //       .copyWith(fontSize: 36.sp),
                  // ),
                  // Text(
                  //   "Never run out of ideas again!",
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.kaushanScript(
                  //       color: AppColors.cFFFFFF,
                  //       fontSize: 36.sp,
                  //       fontWeight: FontWeight.w700),
                  // ),
                  // Text(
                  //   "3.Never run out of ideas again!",
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.pacifico(
                  //       color: AppColors.cFFFFFF,
                  //       fontSize: 28.sp,
                  //       fontWeight: FontWeight.w700),
                  // ),
                  // Text(
                  //   "Never run out of ideas again!",
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.amaticSc(
                  //       color: AppColors.cFFFFFF,
                  //       fontSize: 40.sp,
                  //       fontWeight: FontWeight.w700),
                  // ),

                  Text(
                    "Never run out of ideas again!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.cFFFFFF,
                      fontSize: 42.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Catalina',
                    ),
                  ),
                  // Text(
                  //   "5.Never run out of ideas again!",
                  //   textAlign: TextAlign.center,
                  //   style: GoogleFonts.comicNeue(
                  //       color: AppColors.cFFFFFF,
                  //       fontSize: 28.sp,
                  //       fontWeight: FontWeight.w700),
                  // ),
                  UIHelper.verticalSpaceLarge,
                  AuthCustomeButton(
                    name: "Let's Go!",
                    onCallBack: () {
                      NavigationService.navigateToReplacement(Routes.home);
                    },
                    height: 56.h,
                    minWidth: 343.w,
                    borderRadius: 50.r,
                    color: Colors.transparent,
                    textStyle: TextFontStyle.button16primaryPoppins600.copyWith(
                        color: AppColors.cFFFFFF, fontFamily: 'Merriweather'),
                    context: context,
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF6D60BD),
                        Color(0xFF790CAD),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  UIHelper.verticalSpaceMedium
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
