import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_app3/features/authentication/screens/onboarding/onboarding.dart';
import 'package:t_store_app3/utils/theme/theme.dart';

/// -- Use this class to setup themes, initial Bindings, any animations and much more
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
