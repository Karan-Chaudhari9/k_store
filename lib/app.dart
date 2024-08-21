import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:k_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:k_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}