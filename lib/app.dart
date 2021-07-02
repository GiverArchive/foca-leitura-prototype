import 'package:flutter/material.dart';
import 'package:leiturabacanalegal/pages/home_page/home_page.dart';
import 'package:leiturabacanalegal/pages/login_page/login_page.dart';
import 'package:leiturabacanalegal/pages/splash_page/splash_page.dart';
import 'package:leiturabacanalegal/shared/theme/app_colors.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Foca na Leitura",
      theme: ThemeData(
        primarySwatch: AppColors.primary,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
