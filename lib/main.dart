import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:harry_mine/features/onboarding/presentation/onboarding_screen.dart';
import 'package:harry_mine/gen/colors.gen.dart';
import 'package:harry_mine/loading_screen.dart';
import 'package:provider/provider.dart';
import '/helpers/all_routes.dart';
import 'constants/custome_theme.dart';
import 'helpers/di.dart';
import 'helpers/helper_methods.dart';
import 'helpers/navigation_service.dart';
import 'helpers/register_provider.dart';
import 'networks/dio/dio.dart';

//Future<void> backgroundHandler(RemoteMessage message) async {}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  diSetup();
  initiInternetChecker();
  DioSingleton.instance.create();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    rotation();
    setInitValue();
    return MultiProvider(
      providers: providers,
      child: AnimateIfVisibleWrapper(
        showItemInterval: const Duration(milliseconds: 150),
        child: PopScope(
          canPop: false,
          onPopInvoked: (bool didPop) async {
            //    showMaterialDialog(context);
          },
          child: LayoutBuilder(
            builder: (context, constraints) {
              return const UtillScreenMobile();
            },
          ),
        ),
      ),
    );
  }
}

class UtillScreenMobile extends StatelessWidget {
  const UtillScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return PopScope(
          canPop: false,
          onPopInvoked: (bool didPop) async {
            //  showMaterialDialog(context);
          },
          child: GetMaterialApp(
            //showPerformanceOverlay: true,
            theme: ThemeData(
                primarySwatch: CustomTheme.kToDark,
                useMaterial3: false,
                scaffoldBackgroundColor: AppColors.allPrimaryColor),
            debugShowCheckedModeBanner: false,
            // translations: LocalString(),
            // locale: Locale(language, countryCode),
            builder: (context, widget) {
              return MediaQuery(data: MediaQuery.of(context), child: widget!);
            },
            navigatorKey: NavigationService.navigatorKey,
            onGenerateRoute: RouteGenerator.generateRoute,
            home: const Loading(),
          ),
        );
      },
    );
  }
}
