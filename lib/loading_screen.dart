import 'package:flutter/material.dart';
import 'package:harry_mine/features/onboarding/presentation/onboarding_screen.dart';
import 'package:harry_mine/helpers/dao_access.dart';
import 'package:harry_mine/networks/api_acess.dart';

import 'helpers/helper_methods.dart';
import 'welcome_screen.dart';

final class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool _isLoading = true;

  @override
  void initState() {
    loadInitialData();
    super.initState();
  }

  loadInitialData() async {
    await setInitValue();
    await getBusinessRX.fetchCartData();
    await getCategotyObj.fetchCategoryData();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const WelcomeScreen();
    } else {
      return const OnboardingScreen();
    }
  }
}
