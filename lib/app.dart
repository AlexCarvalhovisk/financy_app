import 'package:financy_app/common/themes/default_theme.dart';
import 'package:financy_app/features/onboarding/onboarding_page.dart';
import 'package:financy_app/features/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';

import 'common/constants/routes.dart';
import 'features/splash/splash_page.dart';

//App de finanças pessoais
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      initialRoute: NamedRoutes.splash,
      routes: {
        NamedRoutes.initial :(context) => const OnboardingPage(),
        NamedRoutes.splash : ((context) => const SplashPage()),
        NamedRoutes.signUp : (context) => const SignUpPage(),
      },
    );
  }
}
